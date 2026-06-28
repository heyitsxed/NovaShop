//
//  ProductImageView.swift
//  NovaShop
//
//  Created by Cedrick on 6/27/26.
//

import SwiftUI

struct ProductImageView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .frame(height: 200)
    }
}
