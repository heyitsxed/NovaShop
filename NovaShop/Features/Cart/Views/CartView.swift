//
//  CartView.swift
//  NovaShop
//
//  Created by Cedrick on 6/28/26.
//

import SwiftUI

struct CartView: View {
    @Environment(CartManager.self) private var cart
    
    private var totalPrice: Double {
        cart.items.reduce(0) { total, item in
            total + (item.product.price * Double(item.product.quantity))
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
        VStack {
            Image("empty-cart")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 220)
            
            VStack(spacing: 5) {
                Text(AppStrings.Cart.cartIsEmpty)
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.horizontal, 15)
                
                Text(AppStrings.Cart.cartDescription)
                    .font(.system(size: 14, weight: .regular))
                    .padding(.horizontal, 35)
                    .multilineTextAlignment(.center)
            }
        }
    }
    
    var cartContent: some View {
        @Bindable var cart = cart
        
        return VStack(alignment: .leading, spacing: 20) {
            
            CartHeaderView(product: allProducts)
            
            ScrollView {
                VStack {
                    ForEach($cart.items) { $item in
                        CartRowView(item: $item)
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
