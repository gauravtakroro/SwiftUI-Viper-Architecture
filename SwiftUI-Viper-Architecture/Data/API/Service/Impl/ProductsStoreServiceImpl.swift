//
//  ProductsStoreServiceImpl.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 10/12/23.
//

import Foundation

class ProductsStoreServiceImpl: ProductsStoreService {
    
    func fetchProducts(
        handler: @escaping (Result<Products, Error, Bool>) -> Void
    ){
        handler(.loading(true))
        
        ApiClient.shared.fetch(
            url: Services.products,
            httpMethod: HttpMethod.GET,
            success: { products in
                handler(.success(products))
            }, failure: {error in
                handler(.failure(error))
            }, completed: {
                handler(.loading(false))
            }
        )
    }
}
