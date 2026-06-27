//
//  Product.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import Foundation

struct Product: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let price: Double
    let imageName: String
    let description: String
    let rating: Double
    let reviewCount: Int
    
    let availableSizes: [ProductSize]
}
