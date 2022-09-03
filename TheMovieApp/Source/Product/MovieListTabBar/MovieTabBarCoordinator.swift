//
//  MovieTabBarCoordinator.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 02/09/22.
//

import Foundation
import UIKit

class MovieTabBarCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeViewCoordinator: MovieHomeCoordinator = MovieHomeCoordinator(navigationController: self.navigationController)
        let favoriteCoordinator: FavoriteMovieCoordinator = FavoriteMovieCoordinator(navigationController: self.navigationController)
        
        let homeTabBarController: MovieTabBar = MovieTabBar()
        homeTabBarController.setViewControllers([homeViewCoordinator.homeViewController, favoriteCoordinator.homeViewController], animated: true)
        self.navigationController.pushViewController(homeTabBarController, animated: true)
    }
    
    
}
