//
//  MovieHomeViewModel.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 03/09/22.
//

import Foundation

protocol sucessDelegate: AnyObject {
    func success()
}

class MovieHomeViewModel {
   //MARK: - Variables
    
    let urlRequest: NetworkRequest = NetworkRequest(endpointURL: "https://api.themoviedb.org/3/trending/movie/week?api_key=9cdb7ffc08075b2aa1fb2cc89d14dabd", method: .get)
    var movieList: MovieDetailModel
    weak private var sucessOperation: sucessDelegate?
    
    //MARK: - Delegate
    
    public func delegate(delegate: sucessDelegate?) {
        self.sucessOperation = delegate
    }
    
    //MARK: - Builder pattern
    
    init(movieList: MovieDetailModel) {
        self.movieList = movieList
    }
    
    public func movieCount() -> Int {
        return movieList.results.count
    }
    
    public func getSingleMovie(index: Int) -> Results {
        return movieList.results[index]
    }    
}

//MARK: - API Call
extension MovieHomeViewModel {
    
    func fetchTrendData() {
        NetwrokAdapter(networkManager: NetworkManager()).parseRequest(networkRequest: urlRequest) { (list: Result<MovieDetailModel, Error>) in
            switch list {
            case .success(let movies):
                self.movieList = movies
                self.sucessOperation?.success()
            case .failure(let error):
                print(error)
            }
        }
    }
}

