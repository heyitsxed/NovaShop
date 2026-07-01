//
//  CartHeaderView.swift
//  NovaShop
//
//  Created by Cedrick on 6/28/26.
//

import SwiftUI

struct CartHeaderView: View {
    let product: [Product]
    
    var body: some View {
        HStack {
            Text("My Cart (\(product.count))")
                .font(.system(size: 24, weight: .bold))
            
            Spacer()
            
            Button(AppStrings.Cart.edit) {
                
            }
            .font(.system(size: 19))
            .foregroundColor(.black)
        }
        .padding(.horizontal, 15)
    }
}
