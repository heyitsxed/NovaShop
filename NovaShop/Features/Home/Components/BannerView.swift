//
//  BannerView.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color(hex: AppColor.purpleThemeColor)
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(AppStrings.Banner.summerSale)
                        .font(.system(size: 22,weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.top)
                    
                    Text(AppStrings.Banner.discount)
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                    
                    Button(AppStrings.Banner.shopNow) {
                        print("Shop now")
                    }
                    .padding()
                    .frame(height: 35)
                    .background()
                    .cornerRadius(7)
                }
                
                Spacer()
                
                Image("shoes-banner")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 10)
                    .padding(.bottom)
            }
            .padding(.horizontal)
        }
        .frame(height: 140)
        .cornerRadius(10)
        .padding(.horizontal)
    }
}
