//
//  CryptoCurrency.swift
//  CryptoCurrency-SwiftUI
//
//  Created by Melike Soygüllücü on 28.08.2024.
//

import Foundation

struct CryptoCurrency : Identifiable, Decodable {
    let id = UUID()
    let currency : String
    let price : String
}
