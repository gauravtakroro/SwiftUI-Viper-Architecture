//
//  SwiftUI_Viper_ArchitectureApp.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 10/12/23.
//

import SwiftUI

@main
struct SwiftUI_Viper_ArchitectureApp: App {
    
    init() {
         Resolver.shared.setDependencyContainer(ApiContainer.shared.buid())
    }
    
    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}
