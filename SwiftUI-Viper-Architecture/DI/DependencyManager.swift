//
//  DependencyManager.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 10/12/23.
//

import Foundation
import Swinject

@propertyWrapper
struct Inject<Component> {
    
    let wrappedValue: Component
    
    init() {
        self.wrappedValue = Resolver.shared.resolve(Component.self)
    }
}

