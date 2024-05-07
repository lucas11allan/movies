//
//  MovieDetailViewModel.swift
//  MoviesDB
//
//  Created by Lucas Allan Almeida Oliveira on 01/05/24.
//

import UIKit

protocol MovieDetailViewModelProtocol {
    var movie: Movie { get set }

    func fetchCategories()
}

enum MovieDetailViewState {
    case loading
    case ready
}

class MovieDetailViewModel: MovieDetailViewModelProtocol {
    var coordinator : MoviesCoordinatorProtocol
    var service: MoviesServiceProtocol
    var movie: Movie
    var categories: [Category] = []

    init(service: MoviesServiceProtocol, coordinator: MoviesCoordinatorProtocol, movie: Movie) {
        self.service = service
        self.coordinator = coordinator
        self.movie = movie
    }

    func fetchCategories() {
        service.getCategories { result in
            switch result {
            case .success(let categories):
                print(categories)
            case .failure(let failure):
                print(failure)
            }
        }
    }
}

