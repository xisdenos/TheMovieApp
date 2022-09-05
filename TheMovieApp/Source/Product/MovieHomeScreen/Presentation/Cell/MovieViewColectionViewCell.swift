//
//  CollectionViewCell.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 03/09/22.
//

import UIKit

class MovieViewColectionViewCell: UICollectionViewCell {
    
    //MARK: - Components
    
    lazy var movieTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Movie Title"
        label.textColor = .green
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    //MARK: - Initializer
    
    static let identifier = "MovieViewColectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(self.movieTitle)
        backgroundColor = .red
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            movieTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            movieTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
}
