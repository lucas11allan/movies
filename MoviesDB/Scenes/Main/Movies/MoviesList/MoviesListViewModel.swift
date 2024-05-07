//
//  MoviesListViewModel.swift
//  MoviesDB
//
//  Created by Lucas Allan Almeida Oliveira on 01/05/24.
//

import Foundation

protocol MoviesListViewModelProtocol {
    var state: Bindable<MoviesListState> { get set }
    var movies: [Movie] { get set }

    func didTapChoose(movie: Movie)
    func fetchList()
}

enum MoviesListState {
    case loading
    case empty
    case ready
}

class MoviesListViewModel {
    var service: MoviesServiceProtocol
    var coordinator: MoviesCoordinatorProtocol
    var state: Bindable<MoviesListState> = .init(.ready)
    var movies: [Movie] = []

    init(service: MoviesServiceProtocol, coordinator: MoviesCoordinatorProtocol) {
        self.service = service
        self.coordinator = coordinator
    }
}

extension MoviesListViewModel: MoviesListViewModelProtocol {
    func fetchList() {
        self.state.value = .loading

        service.getMovies { result in
            switch result {
            case .success(let movies):
                self.movies = movies
                self.state.value = movies.isEmpty ? .empty : .ready
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
    func didTapChoose(movie: Movie) {
        coordinator.continueToChooseMovie(movie: movie)
    }
}
