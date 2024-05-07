//
//  MoviesService.swift
//  MoviesDB
//
//  Created by Lucas Allan Almeida Oliveira on 01/05/24.
//

import Foundation

enum ServiceError: Error {
    case invalidRequest
    case invalidResponse
    case badResponse(Error)
    case parseError
}

protocol MoviesServiceProtocol {
    func getMovies(completion: @escaping (Result<[Movie], ServiceError>) -> Void)
    func getCategories(completion: @escaping (Result<[Category], ServiceError>) -> Void)
}

class MoviesService: MoviesServiceProtocol {
    var userDefaults: UserDefaults {
        return .standard
    }

    struct Constant {
        static let categoryKey = "categories"
        static let entryKey = "entries"
    }

    func getMovies(completion: @escaping (Result<[Movie], ServiceError>) -> Void) {
        let movies = [Movie]()
        completion(.success(movies))
    }
    
    func getCategories(completion: @escaping (Result<[Category], ServiceError>) -> Void) {
        let categories = [Category]()
        completion(.success(categories))
    }
}
