//
//  WebService.swift
//  CryptoCurrency-SwiftUI
//
//  Created by Melike Soygüllücü on 30.08.2024.
//

import Foundation

class WebService {
    
    func getCurrenciesAsync(url: URL) async throws -> [CryptoCurrency]{
        let (data, response) = try await URLSession.shared.data(from : url)
        
        let currencies = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
        
        return currencies ?? []
    }
    
    /*
    func getCurrencies(url: URL, completion: @escaping(Result<[CryptoCurrency]?, urlSessionError>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                completion(.failure(.badURL))
            }
            
            guard let data = data, error == nil else{
                return completion(.failure(.noData))
            }
            
            guard let currencies = try? JSONDecoder().decode([CryptoCurrency].self, from: data) else {
                return completion(.failure(.parsingError))
            }
            
            completion(.success(currencies))
            
        }.resume()
    }
     */
}


enum urlSessionError : Error {
    case badURL
    case noData
    case parsingError
}
