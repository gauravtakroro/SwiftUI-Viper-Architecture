//
//  ApiContainer.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 10/12/23.
//

import Swinject

class ApiContainer {
    
    static var shared = ApiContainer()
    
    func buid() -> Container {
        
        let container = Container()
        
        container.register(ProductsStoreService.self) { _  in
            return ProductsStoreServiceImpl()
        }
        
        return container
    }
    
}

