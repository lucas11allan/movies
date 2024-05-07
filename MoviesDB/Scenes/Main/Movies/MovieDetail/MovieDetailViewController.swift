//
//  MovieDetailViewController.swift
//  MoviesDB
//
//  Created by Lucas Allan Almeida Oliveira on 01/05/24.
//

import UIKit

class MovieDetailViewController: UIViewController {
    var viewModel: MovieDetailViewModelProtocol

    lazy var contentView: MovieDetailView = {
        let view = MovieDetailView(viewModel: viewModel)
        return view
    }()

    init(viewModel: MovieDetailViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    override func loadView() {
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.fetchCategories()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

