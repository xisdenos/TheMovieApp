//
//  MovieController.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 02/09/22.
//

import Foundation

class MovieHomeViewController: ViewController {
    
    var viewModel: MovieHomeViewModel = MovieHomeViewModel()
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .red
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
    }
}

extension MovieHomeViewController: sucessDelegate {
    func success() {
        DispatchQueue.main.async {
            print(self.viewModel.movieList.results)
        }
    }
}
