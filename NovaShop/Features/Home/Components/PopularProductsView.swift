//
//  PopularProductsView.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import SwiftUI

struct PopularProductsView: View {
    @Binding var selectedProduct: UUID?
    
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 5)
    ]
    
    let products = [
        GridProduct(name: "Nike Air Max", price: "$400", imageName: "shoes1"),
        GridProduct(name: "Nike Jordan Max", price: "$30.00", imageName: "shoes2"),
        GridProduct(name: "Nike Max", price: "$200", imageName: "shoes3"),
        GridProduct(name: "Addidas", price: "$4.00", imageName: "shoes4")
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
                VStack(alignment: .leading, spacing: 5) {

                Rectangle()
                    .fill(Color(.systemGray6))
                    .frame(width: 170, height: 180)
                    .cornerRadius(10)
                    .overlay {
                        Image(product.imageName)
                            .resizable()
                            .scaledToFit()
                    }
                    .onTapGesture {
                        selectedProduct = product.id
                        print(product.id)
                    }
                
                    Text(product.name)
                        .font(.system(size: 17, weight: .semibold))

                    Text(product.price)
                        .font(.system(size: 17, weight: .semibold))
                }
            }
        }
        .padding(.horizontal, 15)
    }
}
