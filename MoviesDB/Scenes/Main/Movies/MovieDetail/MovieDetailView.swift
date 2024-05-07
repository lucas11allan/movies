//
//  MovieDetailView.swift
//  MoviesDB
//
//  Created by Lucas Allan Almeida Oliveira on 01/05/24.
//

import UIKit

class MovieDetailView: UIView, CodeView {
    lazy var contentStack: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .vertical
        view.spacing = 36
        return view
    }()

    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.font = .systemFont(ofSize: 28, weight: .bold)
        view.textColor = .black
        return view
    }()

    var viewModel: MovieDetailViewModelProtocol

    init(viewModel: MovieDetailViewModelProtocol) {
        self.viewModel = viewModel
        super.init(frame: .zero)
        setupView()
    }

    func buildViewHierarchy() {
        addSubview(contentStack)

        contentStack.addArrangedSubview(titleLabel)

    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            contentStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 48),
            contentStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            contentStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            contentStack.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor)
        ])
    }

    func setupAdditionalConfiguration() {
        backgroundColor = .white

        titleLabel.text = "Movie Detail"

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
