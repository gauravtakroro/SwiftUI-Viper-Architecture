//
//  ApiContainer.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Roro Solutions LLP on 10/12/23.
//

import Swinject

class ApiContainer {
    
    static var shared = ApiContainer()
    
    func buid() -> Container {
        
        let container = Container()
        
        return container
    }
    
}

