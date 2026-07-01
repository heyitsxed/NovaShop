//
//  CartView.swift
//  NovaShop
//
//  Created by Cedrick on 6/28/26.
//

import SwiftUI

struct CartView: View {
    @State private var itemQuantity: Int = 1
    @Environment(CartManager.self) private var cart
    
    private var totalPrice: Double {
        cart.items.reduce(0) { total, item in
            total + (item.product.price * Double(itemQuantity))
        }
    }
    
    private var allProducts: [Product] {
        cart.items.map { $0.product }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            if allProducts.isEmpty {
                emptyState
            } else {
                cartContent
            }
        }
    }
}

private extension CartView {
    var emptyState: some View {
        Text("Empty")
    }
    
    var cartContent: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            CartHeaderView(product: allProducts)
            
            ScrollView {
                VStack {
                    ForEach(cart.items) { item in
                        CartRowView(itemQuantity: $itemQuantity, product: item.product)
                    }
                }
            }
            
            OrderSummaryView(total: totalPrice)
            
            Spacer()
            
            PrimaryButton(title: AppStrings.Cart.checkout) {
                print("Checkout")
            }
            .padding(.horizontal, 15)
        }
    }
}

#Preview {
    CartView()
}
