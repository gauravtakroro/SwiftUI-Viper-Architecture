//
//  Category.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 10/12/23.
//

import Foundation
struct Category : Identifiable, Decodable {
    let id : Int?
    let name : String?
    let image : String?
    let creationAt : String?
    let updatedAt : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case image = "image"
        case creationAt = "creationAt"
        case updatedAt = "updatedAt"
    }
}
