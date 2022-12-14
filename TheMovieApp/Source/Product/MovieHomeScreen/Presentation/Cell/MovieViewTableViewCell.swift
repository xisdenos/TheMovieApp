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
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Topic"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .green
        return label
    }()
    
    lazy var trendMoviesCollectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
            layout.scrollDirection = .horizontal
    
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(MovieViewColectionViewCell.self, forCellWithReuseIdentifier: MovieViewColectionViewCell.identifier)
        cv.backgroundColor = .brown
        return cv
    }()
    //MARK: - Initializer
    
    static let identifier = "MovieViewTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(self.topicLabel)
        contentView.addSubview(self.trendMoviesCollectionView)
        setUpCollectionViewDelegate(delegate: self, dataSource: self)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - CollectionView Delegate
    
    func setUpCollectionViewDelegate(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        self.trendMoviesCollectionView.delegate = delegate
        self.trendMoviesCollectionView.dataSource = dataSource
    }
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            topicLabel.topAnchor.constraint(equalTo: self.topAnchor),
            topicLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            
            trendMoviesCollectionView.topAnchor.constraint(equalTo: self.topicLabel.bottomAnchor, constant: 3),
            trendMoviesCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            trendMoviesCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            trendMoviesCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1),
        ])
    }

}

extension MovieViewTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MovieViewColectionViewCell? = collectionView.dequeueReusableCell(withReuseIdentifier: MovieViewColectionViewCell.identifier, for: indexPath)
        as? MovieViewColectionViewCell
        return cell ?? UICollectionViewCell()
    }
}
