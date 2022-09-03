//
//  MovieHomeCoordinator.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 03/09/22.
//

import Foundation
import UIKit

class MovieHomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    var homeViewController: MovieHomeViewController = {
        let viewController = MovieHomeViewController()
        viewController.tabBarItem.image = UIImage(systemName: "music.note.house")
        viewController.title = "Home"
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
    
}
