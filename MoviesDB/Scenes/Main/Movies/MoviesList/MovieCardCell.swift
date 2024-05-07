//
//  MovieCardCell.swift
//  MoviesDB
//
//  Created by Lucas Allan Almeida Oliveira on 01/05/24.
//

import Foundation
import UIKit

class MovieCardCell: UICollectionViewCell, CodeView {
    static let identifier = "MovieCardCell"
    
    private let image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.backgroundColor = .yellow
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Custom"
        label.backgroundColor = .green
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    func configure(movie: Movie) {
        /* descriptionLabel.text = movie.description
        dateLabel.text = movie.date.formatted(format: "dd MMM")
        categoryLabel.text = " \(movie.category.name) "
        valueLabel.text = movie.value.currencyFormatted()
        valueLabel.textColor = movie.type.color */
    }

    func buildViewHierarchy() {
        contentView.backgroundColor = .systemCyan
        contentView.addSubview(label)
        contentView.addSubview(image)
    }

    func setupConstraints() {
        label.frame = CGRect(x: 5,
                             y: contentView.frame.size.height-50,
                             width: contentView.frame.size.width-10,
                             height: 50)
        
        image.frame = CGRect(x: 5,
                             y: 0,
                             width: contentView.frame.size.width-10,
                             height: contentView.frame.size.height-50)
    }

    func setupAdditionalConfiguration() {
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
