//
//  ActionsButtonView.swift
//  NovaShop
//
//  Created by Cedrick on 6/27/26.
//

import SwiftUI

struct CartItem: Identifiable {
    let id = UUID()
    let product: Product
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
    
    let product: Product
    
    var body: some View {
        VStack(spacing: 15) {
            PrimaryButton(title: AppStrings.ProductDetail.addToCart) {
                print("Add to cart")
                cart.add(product: product)
            }
            
            SecondaryButton(title: AppStrings.ProductDetail.buyNow) {
                print("Buy now")
            }
        }
        .padding(.top, 10)
    }
}
