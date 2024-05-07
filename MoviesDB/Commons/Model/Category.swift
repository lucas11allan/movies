//
//  Category.swift
//  MoviesDB
//
//  Created by Lucas Allan Almeida Oliveira on 01/05/24.
//

import Foundation

struct Category: Codable {
    var id: String
    var description: String
    var type: Int
    var category: Int
    var date: Date
    var value: Double

    static func empty() -> Category {
        return .init(id: UUID().uuidString, description: "", type: 0, category: 0, date: Date(), value: 0.0)
    }
}
