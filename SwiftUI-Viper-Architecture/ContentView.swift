//
//  ContentView.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("swiftui_icon1").resizable()
                .frame(width: 60, height: 60)
            Text("SwiftUI with viper Architecture")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
