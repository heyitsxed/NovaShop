//
//  CartRowView.swift
//  NovaShop
//
//  Created by Cedrick on 6/29/26.
//

import SwiftUI

struct CartRowView: View {
    @Binding var item: CartItem
    @Environment(CartManager.self) private var cart
        
    var body: some View {
        HStack(spacing: 16) {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemGray6))
                .frame(width: 100, height: 100)
                .overlay {
                    Image(item.product.imageName)
                        .resizable()
                        .scaledToFit()
                }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(item.product.name)
                    .lineLimit(2)
                    .font(.system(size: 16, weight: .bold))
                
                Text(item.product.availableSizes.first?.size ?? "")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.secondary)
                
                Text(item.product.price, format: .currency(code: "PHP"))
                    .font(.system(size: 16, weight: .bold))
            }
            
            Spacer()
            
            CartStepper(quantity: $item.product.quantity, maxLimit: 10) {
                cart.delete(product: item.product)
            }
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)
        .padding(.horizontal)
    }
}
