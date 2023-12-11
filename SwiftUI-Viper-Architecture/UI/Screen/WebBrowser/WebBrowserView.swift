//
//  WebBrowserView.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 11/12/23.
//

import SwiftUI

struct WebBrowserView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var url: URL
    
    var body: some View {
        VStack {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Close")
            }
            
            WebView(url: url)
        }
        .buttonStyle(BorderlessButtonStyle())
    }
}

struct WebBrowserView_Previews: PreviewProvider {
    static var previews: some View {
        WebBrowserView(url: URL(string: "https://www.google.com")!)
    }
}

