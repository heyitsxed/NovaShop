//
//  CartView.swift
//  NovaShop
//
//  Created by Cedrick on 6/28/26.
//

import SwiftUI

struct CartView: View {
    @State private var itemQuantity: Int = 1
    
    var body: some View {
        VStack(spacing: 20) {
            CartHeaderView()
            CartRowView(itemQuantity: $itemQuantity)           
            
            Spacer()
        }
    }
}

struct CartRowView: View {
    @Binding var itemQuantity: Int
    
    var body: some View {
        HStack(spacing: 16) {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemGray6))
                .frame(width: 100, height: 100)
                .overlay {
                    Image("shoes1")
                        .resizable()
                        .scaledToFit()
                }
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Nike Air Max Pro")
                    .lineLimit(2)
                    .font(.system(size: 18, weight: .bold))
                
                Text("Size 7")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.secondary)
                
                Text("$400")
                    .font(.system(size: 18, weight: .bold))
            }
            
            Spacer()
            
            CartStepper(quantity: $itemQuantity, maxLimit: 10)
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)
        .padding(.horizontal)
    }
}

#Preview {
    CartView()
}
