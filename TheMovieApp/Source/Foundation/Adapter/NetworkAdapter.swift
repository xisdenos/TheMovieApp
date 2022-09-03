//
//  NetworkAdapter.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 02/09/22.
//

import Foundation
//MARK: - Protocol
protocol NetworkAdapterProtocol {
    func parseRequest<T: Decodable>(networkRequest: NetworkRequest, completion: @escaping (Result<T, Error>) -> Void)
}

//MARK: - Adapter pattern

class NetwrokAdapter: NetworkAdapterProtocol {
    var networkManager: NetworkManager
    
    init(networkManager: NetworkManager){
        self.networkManager = networkManager
    }
    
    func parseRequest<T: Decodable>(networkRequest: NetworkRequest ,completion: @escaping (Result<T, Error>) -> Void) {
        
        networkManager.getData(with: networkRequest) { (result) in
            switch result {
            case .success(let data):
                do {
                    let modelAdapted = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(modelAdapted))
                } catch {
                    print(error)
                    completion(.failure(NetworkAdapterError.decodeError))
                }
            case .failure(_):
                completion(.failure(NetworkAdapterError.noData))
            }
        }
    }
    
    
}
