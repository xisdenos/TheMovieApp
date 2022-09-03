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
        label.text = "Movie Title"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    //MARK: - Initializer
    
    static let identifier = "CollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            movieTitle.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            movieTitle.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
