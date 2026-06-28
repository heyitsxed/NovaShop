//
//  Category.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import Foundation

struct ProductCategory: Identifiable, Hashable {
    let id = UUID()
    let iconName: String
    let name: String
}
