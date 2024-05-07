//
//  MoviesListViewController.swift
//  MoviesDB
//
//  Created by Lucas Allan Almeida Oliveira on 01/05/24.
//

import Foundation
import UIKit


class MoviesListViewController: UIViewController, CodeView {
    var viewModel: MoviesListViewModelProtocol

    lazy var contentView: MoviesListView = {
        let view = MoviesListView(viewModel: viewModel)
        return view
    }()

    init(viewModel: MoviesListViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    override func loadView() {
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

        viewModel.fetchList()
    }

    @objc
    func handleAdd() {
        
    }

    func setupAdditionalConfiguration() {
        navigationItem.title = "Movies"
    }

    func buildViewHierarchy() {

    }

    func setupConstraints() {

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
