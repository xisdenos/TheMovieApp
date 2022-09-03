//
//  NetworkRequest.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 02/09/22.
//

import Foundation

struct NetworkRequest {
    var endpointURL: String
    var method: HTTPMethod
    var headers: [String: String]
}

enum HTTPMethod: String {
    case get
}
