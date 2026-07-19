//
//  ProductCardView.swift
//  NovaShop
//
//  Created by Cedrick on 6/27/26.
//

import SwiftUI

struct ProductCardView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            Rectangle()
                .fill(Color(.white))
                .frame(width: 170, height: 180)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.1), radius: 15, x: 0, y: 10)
                .overlay {
                    Image(product.imageName)
                        .resizable()
                        .scaledToFit()
                }
            
            Text(product.name)
                .font(.system(size: 17, weight: .semibold))
            
            Text(product.price, format: .currency(code: "PHP"))
                .font(.system(size: 17, weight: .semibold))
        }
    }
}
