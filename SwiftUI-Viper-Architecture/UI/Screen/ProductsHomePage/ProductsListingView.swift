//
//  ProductsListingView.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 11/12/23.
//

import SwiftUI

struct ProductsListingView: View, ProductsListingViewProtocol {
    
    @State private var isWebView: Bool = false
    @State private var productUrl: String? = nil
   
     
    @ObservedObject
    private var presenter: ProductsListingPresenter
    private let dependencies: ProductsListingViewDependenciesProtocol
    
    init(dependencies: ProductsListingViewDependenciesProtocol, presenter: ProductsListingPresenter) {
        self.dependencies = dependencies
        self.presenter = presenter
    }
    
    var body: some View {
        NavigationView {
            main.navigationBarTitle("Products")
        }
    }
    
    var main: some View {
        VStack {
            if presenter.isLoading {
                ProgressView().progressViewStyle(CircularProgressViewStyle())
            }
            else {
                ScrollView {
                    
                    if let products = presenter.products {
                        VStack {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                                    .onTapGesture {
                                        if product.images.count > 0 {
                                            self.productUrl = product.images[0]
                                        }
                                    }
                            }
                        }
                        .sheet(item: self.$productUrl, content: { url in
                            self.presenter.goWebBrowser(url: url)
                        })
                    }
                }
            }
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .onAppear {
            presenter.loadProductsListing()
        }
    }
}

struct ProductsListingView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsListingRouter.composeView()
    }
}

