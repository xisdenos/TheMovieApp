//
//  MovieController.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 02/09/22.
//

import Foundation
import UIKit

class MovieHomeViewController: UIViewController {
    
    var viewModel: MovieHomeViewModel = MovieHomeViewModel()
    var homeView: MovieHomeView = MovieHomeView()
    
    override func loadView() {
        super.loadView()
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
        homeView.setUpTableViewDelegate(delegate: self, dataSorce: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

//MARK: - Delegate extension

extension MovieHomeViewController: sucessDelegate {
    func success() {
        DispatchQueue.main.async {
            print("Chamou")
        }
    }
}

//MARK: - TableView configuration

extension MovieHomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MovieViewTableViewCell? = tableView.dequeueReusableCell(withIdentifier: MovieViewTableViewCell.identifier, for: indexPath) as? MovieViewTableViewCell
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(150)
    }
}
