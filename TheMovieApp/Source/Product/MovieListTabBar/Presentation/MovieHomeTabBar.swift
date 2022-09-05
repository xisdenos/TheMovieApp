//
//  MovieHomeTabBar.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 02/09/22.
//

import Foundation
import UIKit

final class MovieTabBar: UITabBarController {
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        
        tabBar.tintColor = .blue
        tabBar.isTranslucent = false
        UITabBar.appearance().barTintColor = .green
    }
}
