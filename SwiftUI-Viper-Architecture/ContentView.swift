//
//  ContentView.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ProductsListingRouter.composeView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
