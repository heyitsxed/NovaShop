//
//  OrderSummaryView.swift
//  NovaShop
//
//  Created by Cedrick on 6/29/26.
//

import SwiftUI

struct OrderSummaryView: View {
    var body: some View {
        Text(AppStrings.Cart.orderSummary)
            .font(.system(size: 17, weight: .bold))
            .padding(.leading, 15)

        VStack(spacing: 10) {
            HStack {
                Text(AppStrings.Cart.subTotal)
                    .font(.system(size: 17, weight: .regular))
                
                Spacer()
                
                Text("$7,994")
                    .font(.system(size: 17, weight: .semibold))
            }
            
            HStack {
                Text(AppStrings.Cart.shipping)
                    .font(.system(size: 17, weight: .regular))

                Spacer()
                
                Text("$100")
                    .font(.system(size: 17, weight: .semibold))
            }
            
            Divider()
            
            HStack {
                Text(AppStrings.Cart.total)
                    .font(.system(size: 18, weight: .bold))
                
                Spacer()
                
                Text("$8,094")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(Color(hex: AppColor.purpleThemeColor))
                
            }
        }
        .padding(.horizontal, 15)
    }
}
