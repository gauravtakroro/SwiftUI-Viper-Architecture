//
//  ProductsListingRouter.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 11/12/23.
//

import SwiftUI

struct ProductsListingRouter: ProductsListingRouterProtocol {
    
    static func composeView() -> AnyView {
        
        let router = ProductsListingRouter()
        
        let interactorDependencies = ProductsListingInteractorDependencies()
        let presenterDependencies = ProductsListingPresenterDepenencies()
        let viewDependencies = ProductsListingViewDependencies()
        
        let interactor = ProductsListingInteractor(dependencies: interactorDependencies)
        let presenter = ProductsListingPresenter(dependencies: presenterDependencies, interactor: interactor, router: router)
        let view = ProductsListingView(dependencies: viewDependencies, presenter: presenter)
        
        return AnyView(view)
    }
    
    func showWebBrowserView(url: String) -> WebBrowserView {
        return WebBrowserView(url: URL(string: url)!)
    }
}

