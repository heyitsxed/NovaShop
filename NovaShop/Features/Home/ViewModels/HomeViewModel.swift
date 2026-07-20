//
//  HomeViewModel.swift
//  NovaShop
//
//  Created by Cedrick on 6/28/26.
//

import Foundation

@Observable
class HomeViewModel {

    let products = [
        Product(
            name: "Nike Air Max",
            price: 245.22,
            imageName: "shoes1",
            description: "Comfortable shoes for running and it's good for everyday wear.",
            rating: 12.2,
            reviewCount: 21,
            quantity: 1,
            availableSizes: [
                ProductSize(size: "7"),
                ProductSize(size: "8"),
                ProductSize(size: "9"),
                ProductSize(size: "10"),
                ProductSize(size: "11")
            ]
        ),
        
        Product(
            name: "Nike Jordan Max",
            price: 245.22,
            imageName: "shoes2",
            description: "Comfortable shoes for running and it's good for everyday wear.",
            rating: 12.2,
            reviewCount: 21,
            quantity: 1,
            availableSizes: [
                ProductSize(size: "7"),
                ProductSize(size: "8"),
                ProductSize(size: "9"),
                ProductSize(size: "10"),
                ProductSize(size: "11")
            ]
        ),
        
        Product(
            name: "Addidas",
            price: 245.22,
            imageName: "shoes3",
            description: "Comfortable shoes for running and it's good for everyday wear.",
            rating: 12.2,
            reviewCount: 21,
            quantity: 1,
            availableSizes: [
                ProductSize(size: "7"),
                ProductSize(size: "8"),
                ProductSize(size: "9"),
                ProductSize(size: "10"),
                ProductSize(size: "11")
            ]
        ),
        
        Product(
            name: "World Balance",
            price: 245.22,
            imageName: "shoes4",
            description: "Comfortable shoes for running and it's good for everyday wear.",
            rating: 12.2,
            reviewCount: 21,
            quantity: 1,
            availableSizes: [
                ProductSize(size: "7"),
                ProductSize(size: "8"),
                ProductSize(size: "9"),
                ProductSize(size: "10"),
                ProductSize(size: "11")
            ]
        )
    ]
}
