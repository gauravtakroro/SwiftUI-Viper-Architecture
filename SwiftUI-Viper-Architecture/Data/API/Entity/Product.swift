//
//  Product.swift
//  SwiftUI-Viper-Architecture
//
//  Created by Gaurav Tak on 10/12/23.
//

import Foundation

struct Product : Identifiable, Decodable {
    let id : Int?
    let title : String?
    let price : Int?
    let description : String?
    let images : [String]?
    let creationAt : String?
    let updatedAt : String?
    let category : Category?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case price = "price"
        case description = "description"
        case images = "images"
        case creationAt = "creationAt"
        case updatedAt = "updatedAt"
        case category = "category"
    }
}

typealias Products = [Product]
