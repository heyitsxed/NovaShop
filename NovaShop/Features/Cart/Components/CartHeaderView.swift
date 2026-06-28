//
//  CartHeaderView.swift
//  NovaShop
//
//  Created by Cedrick on 6/28/26.
//

import SwiftUI

struct CartHeaderView: View {
    var body: some View {
        HStack {
            Text("My Cart (2)")
                .font(.system(size: 24, weight: .bold))
            
            Spacer()
            
            Button("Edit") {
                
            }
            .font(.system(size: 19))
            .foregroundColor(.black)
        }
        .padding(.horizontal, 15)
    }
}
