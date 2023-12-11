//
//  ProductsListingContracts.swift
//  vipernews
//
//  Created by Gaurav Tak on 11/12/23.
//


import SwiftUI

// MARK: - View Protocol

protocol ProductsListingViewProtocol {
    
}

// MARK: - Presenter Protocol

protocol ProductsListingPresenterProtocol {
    var products: Products? { get set }
    func loadProductsListing()
    func goWebBrowser(url: String) -> WebBrowserView
}

// MARK: - Interactor Protoco l

protocol ProductsListingInteractorProtocol {
    func getProductsListing(handler: @escaping (Result<Products, Error, Bool>) -> Void)
}

// MARK: - Router Protocol

protocol ProductsListingRouterProtocol {
    static func composeView() -> AnyView
    func showWebBrowserView(url: String) -> WebBrowserView
}

