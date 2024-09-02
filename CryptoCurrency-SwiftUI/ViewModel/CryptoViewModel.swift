//
//  CryptoViewModel.swift
//  CryptoCurrency-SwiftUI
//
//  Created by Melike Soygüllücü on 2.09.2024.
//

import Foundation

class CryptoListViewModel : ObservableObject {
    
}

struct CryptoViewModel {
    
    let crypto : CryptoCurrency
    
    var id : UUID? {
        crypto.id
    }
    
    var currency : String {
        crypto.currency
    }
    
    var price : String {
        crypto.price
    }
}
