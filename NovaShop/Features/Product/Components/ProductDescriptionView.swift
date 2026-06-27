//
//  ProductDescriptionView.swift
//  NovaShop
//
//  Created by Cedrick on 6/27/26.
//

import SwiftUI

struct ProductDescriptionView: View {
    @State var selectedSize: UUID? = nil
    
    let product: Product
    
    var body: some View {
        Text(product.name)
            .font(.system(size: 28, weight: .bold))
        
        Text(product.price, format: .currency(code: "PHP"))
            .font(.system(size: 28, weight: .bold))
        
        Text("⭐️ \(Text(product.rating, format: .number.precision(.fractionLength(2)))) (\(product.reviewCount) reviews)")
            .font(.system(size: 18, weight: .regular))
            .foregroundColor(.secondary)
        
        Text(product.description)
            .font(.system(size: 18, weight: .regular))
            .multilineTextAlignment(.leading)
            .padding(.top, 10)
        
        Text(AppStrings.ProductDetail.size)
            .font(.system(size: 22, weight: .bold))
            .padding(.top, 15)
        
        HStack(alignment: .center, spacing: 15) {
            ForEach(product.availableSizes, id: \.id) { size in
                Button {
                    selectedSize = size.id
                    print(selectedSize == size.id)
                    print(size.id)
                } label: {
                    SizeChip(size: size, isSelected: selectedSize == size.id)
                }
            }
        }
    }
}
