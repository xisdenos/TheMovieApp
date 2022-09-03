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
