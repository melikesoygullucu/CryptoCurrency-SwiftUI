//
//  CryptoViewModel.swift
//  CryptoCurrency-SwiftUI
//
//  Created by Melike Soygüllücü on 2.09.2024.
//

import Foundation

class CryptoListViewModel : ObservableObject {
    @Published var cryptoList = [CryptoViewModel]()
    
    let webService = WebService()
    
    // async-await
    
    func getCurrenciesAsync(url: URL) async {
        do{
            let currencies = try await webService.getCurrenciesAsync(url: url)
            DispatchQueue.main.async {
                self.cryptoList = currencies.map(CryptoViewModel.init)
            }
        } catch {
            print(error)
        }
    }
    
    
    //old way
    
    /*
     func getCurrencies(url : URL) {
        webService.getCurrencies(url: url) { result in
            switch result {
            case .failure(let error) :
                print(error.localizedDescription)
                
            case .success(let cryptos):
                if let cryptos = cryptos {
                    DispatchQueue.main.async {
                        self.cryptoList = cryptos.map(CryptoViewModel.init)
                    }
                }
            }
            
        }
    }
     */
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
