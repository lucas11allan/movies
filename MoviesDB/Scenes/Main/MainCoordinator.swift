//
//  MainCoordinator.swift
//  MoviesDB
//
//  Created by Lucas Allan Almeida Oliveira on 01/05/24.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var service: MoviesServiceProtocol = MoviesService()

    internal init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let moviesNavigation = UINavigationController()
        let moviesCoordinator = MoviesCoordinator(navigationController: navigationController,
                                                service: service)
        moviesCoordinator.start()
        childCoordinators.append(moviesCoordinator)
    }
}
