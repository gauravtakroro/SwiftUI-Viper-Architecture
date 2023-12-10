//
//  ProductsStoreService.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 10/12/23.
//


import Foundation

protocol ProductsStoreService {
    
    func fetchProducts(handler: @escaping (Result<Products, Error, Bool>) -> Void)
}

