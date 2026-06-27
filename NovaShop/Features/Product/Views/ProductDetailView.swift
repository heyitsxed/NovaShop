//
//  ProductDetailView.swift
//  NovaShop
//
//  Created by Cedrick on 6/27/26.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            ProductImageView(
                imageName: product.imageName
            )
                        
            ProductDescriptionView(
                product: product
            )
            
            ActionsButtonView()
            
            Spacer()
        }
        .padding(.horizontal, 15)
    }
}
