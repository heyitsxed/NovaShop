//
//  ActionsButtonView.swift
//  NovaShop
//
//  Created by Cedrick on 6/27/26.
//

import SwiftUI

struct ActionsButtonView: View {
    var body: some View {
        VStack(spacing: 15) {
            PrimaryButton(title: AppStrings.ProductDetail.addToCart) {
                print("Add to cart")
            }
            
            SecondaryButton(title: AppStrings.ProductDetail.buyNow) {
                print("Buy now")
            }
        }
        .padding(.top, 10)
    }
}
