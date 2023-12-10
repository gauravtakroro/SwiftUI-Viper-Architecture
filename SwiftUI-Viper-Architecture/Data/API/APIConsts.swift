//
//  APIConsts.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 10/12/23.
//

import Foundation

enum Api : String {
    case BASE_URL = "https://api.escuelajs.co/api"
}

enum ApiVersion : String {
    case v3 = "v1"
}

struct Services {
    static let products = "\(Api.BASE_URL.rawValue)/\(ApiVersion.v3.rawValue)/products"
}
