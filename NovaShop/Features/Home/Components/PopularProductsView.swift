//
//  PopularProductsView.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import SwiftUI

struct PopularProductsView: View {
    
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 5)
    ]
    
    let products = [
        Product(
            name: "Nike Air Max",
            price: 245.22,
            imageName: "shoes1",
            description: "Comfortable shoes for running and it's good for everyday wear.",
            rating: 12.2,
            reviewCount: 21,
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
            availableSizes: [
                ProductSize(size: "7"),
                ProductSize(size: "8"),
                ProductSize(size: "9"),
                ProductSize(size: "10"),
                ProductSize(size: "11")
            ]
        ),
    ]
    
    var body: some View {
        HStack {
            Text(AppStrings.PopularProducts.title)
                .font(.system(size: 18, weight: .semibold))
            Spacer()
            Button(AppStrings.PopularProducts.seeAll) {
                print("See all")
            }
        }
        .padding(.horizontal, 15)
        
        LazyVGrid(columns: columns) {
            ForEach(products, id: \.id) { product in
                NavigationLink(value: HomeNavigationDestination.productDetail(product)) {
                    ProductCardView(product: product)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal, 15)
    }
}
