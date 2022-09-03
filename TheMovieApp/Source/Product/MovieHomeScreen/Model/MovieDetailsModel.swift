//
//  MovieDetailsModel.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 03/09/22.
//

import Foundation

struct MovieDetailModel: Decodable {
    let results: [Results]
}

struct Results: Codable {
    let id: Int
    let originalLanguage: String
    let originalTitle: String
    let overview: String
    let posterPath: String
    let title: String
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
        case title
        
    }
}




