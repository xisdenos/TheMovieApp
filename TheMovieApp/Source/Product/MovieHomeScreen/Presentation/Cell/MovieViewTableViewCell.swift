//
//  MovieViewTableViewCell.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 03/09/22.
//

import UIKit

class MovieViewTableViewCell: UITableViewCell {
    
    //MARK: - Components
    
    lazy var topicLabel: UILabel = {
        let label = UILabel()
        label.text = "#Topic"
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .white
        return label
    }()
    
    lazy var trendMoviesCollectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
            layout.scrollDirection = .vertical
    
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .purple
        return cv
    }()
    //MARK: - Initializer
    
    static let identifier = "MovieViewTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            topicLabel.topAnchor.constraint(equalTo: self.topAnchor),
            topicLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            
            trendMoviesCollectionView.topAnchor.constraint(equalTo: self.topicLabel.bottomAnchor, constant: 3),
            trendMoviesCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            trendMoviesCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            trendMoviesCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1)
        ])
    }

}
