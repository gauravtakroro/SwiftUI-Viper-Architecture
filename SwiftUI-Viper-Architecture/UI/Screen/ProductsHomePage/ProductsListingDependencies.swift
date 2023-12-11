//
//  ProductsListingDependencies.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 11/12/23.
//


// MARK: - View Dependencies

protocol ProductsListingViewDependenciesProtocol {
    
}

struct ProductsListingViewDependencies: ProductsListingViewDependenciesProtocol {
    
}

// MARK: - Presenter Dependencies

protocol ProductsListingPresenterDependenciesProtocol {
    
}

struct ProductsListingPresenterDepenencies: ProductsListingPresenterDependenciesProtocol {
    
    init() {
    
    }
}

// MARK: - Interactor Dependencies

protocol ProductsListingInteractorDependenciesProtocol {
    var productsService : ProductsStoreService { get set }
}

struct ProductsListingInteractorDependencies: ProductsListingInteractorDependenciesProtocol {
    
    var productsService: ProductsStoreService
    
    init() {
        print("ProductsListingInteractorDependencies--resolve")
        productsService = Resolver.shared.resolve(ProductsStoreService.self)
    }
    
}

