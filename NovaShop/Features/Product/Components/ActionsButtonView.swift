//
//  ActionsButtonView.swift
//  NovaShop
//
//  Created by Cedrick on 6/27/26.
//

import SwiftUI
import Combine

struct CartItem: Identifiable {
    let id = UUID()
    var product: Product
}

@Observable
class CartManager {
    var items: [CartItem] = []
    
    func add(product: Product) {
        print(product)
        items.append(CartItem(product: product))
    }
    
    func delete(product: Product) {
        guard let product = items.firstIndex(where: { $0.product.id == product.id }) else { return }
        items.remove(at: product)
    }
}

struct ActionsButtonView: View {
    
    @Environment(CartManager.self) private var cart
    @State private var isShowingAlert: Bool = false
    
    let product: Product
    
    var body: some View {
        VStack(spacing: 15) {
            PrimaryButton(title: AppStrings.ProductDetail.addToCart) {
                cart.add(product: product)
                isShowingAlert = true
            }
            
            SecondaryButton(title: AppStrings.ProductDetail.buyNow) {
                print("Buy now")
            }
        }
        
        .padding(.top, 10)
        .alert(AppStrings.Cart.addedToCart, isPresented: $isShowingAlert) {
            Button("OK", role: .cancel) {}
            
        } message: {
            Text(AppStrings.Cart.addedToCartDescription)
        }
    }
}
