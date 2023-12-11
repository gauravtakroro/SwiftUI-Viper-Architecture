//
//  ProductsListingPresenter.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 11/12/23.
//

import Foundation
import Combine

final class ProductsListingPresenter: ProductsListingPresenterProtocol, ObservableObject {
    
    @Published var products: Products? = nil
    @Published var isLoading: Bool = false
    
    private var dependencies: ProductsListingPresenterDependenciesProtocol
    private let interactor: ProductsListingInteractorProtocol
    private let router: ProductsListingRouterProtocol
    
    init(
        dependencies: ProductsListingPresenterDependenciesProtocol,
        interactor: ProductsListingInteractorProtocol,
        router: ProductsListingRouterProtocol
    ) {
        self.dependencies = dependencies
        self.interactor = interactor
        self.router = router
    }
    
    func loadProductsListing() {
        DispatchQueue.main.async {
            self.interactor.getProductsListing { result in
                switch result {
                case .success(let data):
                    Just(data)
                        .receive(on: RunLoop.main)
                        .assign(to: &self.$products)
                case .failure(let error):
                    print(error.localizedDescription)
                    //router.
                case .loading(let isLoading):
                    Just(isLoading)
                        .receive(on: RunLoop.main)
                        .assign(to: &self.$isLoading)
                }
            }
        }
    }
    
    func goWebBrowser(url: String) -> WebBrowserView {
        return self.router.showWebBrowserView(url: url)
    }
}

