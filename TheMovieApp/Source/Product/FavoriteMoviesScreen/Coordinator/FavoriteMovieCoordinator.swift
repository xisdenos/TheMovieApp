//
//  FavoriteMovieCoordinator.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 03/09/22.
//

import Foundation
import UIKit

class FavoriteMovieCoordinator: Coordinator {
    var navigationController: UINavigationController
    var homeViewController: FavoriteMoviewViewcontroller = {
        let viewController = FavoriteMoviewViewcontroller()
        viewController.tabBarItem.image = UIImage(systemName: "suit.heart")
        viewController.title = "Home"
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
    
}
