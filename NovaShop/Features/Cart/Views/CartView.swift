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
        VStack(alignment: .leading, spacing: 20) {
            CartHeaderView()
            CartRowView(itemQuantity: $itemQuantity)
            OrderSummaryView()
            
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
