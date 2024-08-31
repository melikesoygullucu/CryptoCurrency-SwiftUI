//
//  WebService.swift
//  CryptoCurrency-SwiftUI
//
//  Created by Melike Soygüllücü on 30.08.2024.
//

import Foundation

class WebService {
    func getCurrencies(url: URL, completion: @escaping(Result<[CryptoCurrency]?, urlSessionError>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            
        }
    }
}


enum urlSessionError : Error {
    case badURL
    case noData
    case parsingError
}
