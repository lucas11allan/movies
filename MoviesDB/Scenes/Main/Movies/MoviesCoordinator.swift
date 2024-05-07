//
//  MoviesCoordinator.swift
//  MoviesDB
//
//  Created by Lucas Allan Almeida Oliveira on 01/05/24.
//

import UIKit

protocol MoviesCoordinatorProtocol: AnyObject {
    func continueToChooseMovie(movie: Movie)
    func dismissReloadList()
}

class MoviesCoordinator: Coordinator, MoviesCoordinatorProtocol {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var service: MoviesServiceProtocol

    init(navigationController: UINavigationController,
         service: MoviesServiceProtocol) {
        self.navigationController = navigationController
        self.service = service
    }

    func start() {
        let viewModel = MoviesListViewModel(service: service, coordinator: self)
        let viewController = MoviesListViewController(viewModel: viewModel)
        navigationController.setViewControllers([viewController], animated: true)
        //navigationController.pushViewController(viewController, animated: true)
    }
    
    func continueToChooseMovie(movie: Movie) {
        let viewModel = MovieDetailViewModel(service: service, coordinator: self, movie: movie)
        let viewController = MovieDetailViewController(viewModel: viewModel)
        navigationController.present(viewController, animated: true)
    }
    
    func dismissReloadList() {
        
    }
}
