//
//  MovieHomeView.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 03/09/22.
//

import Foundation
import UIKit

class MovieHomeView: UIView {
    
    //MARK: - Components
    
    lazy var logoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "MovieApp"
        label.textColor = .green
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var searchTextField: UITextField = {
        let tf = CustomTF(placeholder: "Busca trends", isSecure: false)
        return tf
    }()
    
    lazy var MoviesList: UITableView = {
        let tView = UITableView()
        tView.translatesAutoresizingMaskIntoConstraints = false
        tView.register(MovieViewTableViewCell.self, forCellReuseIdentifier: MovieViewTableViewCell.identifier)
        tView.backgroundColor = .purple
        return tView
    }()
    
    //MARK: - TableView Delegate
    
    func setUpTableViewDelegate(delegate: UITableViewDelegate, dataSorce: UITableViewDataSource) {
        self.MoviesList.delegate = delegate
        self.MoviesList.dataSource = dataSorce
    }
    
    //MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setSuperView()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - SuperView
    
    private func setSuperView() {
        addSubview(logoLabel)
        addSubview(searchTextField)
        addSubview(MoviesList)
    }
    
    //MARK: - Constraints
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            logoLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 5),
            logoLabel.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            
            searchTextField.topAnchor.constraint(equalTo: self.logoLabel.bottomAnchor, constant: 20),
            searchTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            searchTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            searchTextField.heightAnchor.constraint(equalToConstant: 40),
            
            MoviesList.topAnchor.constraint(equalTo: self.searchTextField.bottomAnchor, constant: 30),
            MoviesList.leadingAnchor.constraint(equalTo: self.searchTextField.leadingAnchor),
            MoviesList.trailingAnchor.constraint(equalTo: self.searchTextField.trailingAnchor),
            MoviesList.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
    

