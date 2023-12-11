//
//  ProductsListingInteractor.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 11/12/23.
//

final class ProductsListingInteractor: ProductsListingInteractorProtocol {
   
    private let dependencies: ProductsListingInteractorDependenciesProtocol
    
    init(dependencies: ProductsListingInteractorDependenciesProtocol) {
        self.dependencies = dependencies
    }
    
    func getProductsListing(handler: @escaping (Result<Products, Error, Bool>) -> Void) {
        self.dependencies.productsService.fetchProducts { result in
            switch result {
            case .success(let data):
                handler(.success(data))
            case .failure(let error):
                handler(.failure(error))
            case .loading(let isLoading):
                handler(.loading(isLoading))
            }
        }
    }
}
