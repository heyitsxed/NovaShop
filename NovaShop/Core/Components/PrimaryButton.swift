//
//  PrimaryButton.swift
//  NovaShop
//
//  Created by Cedrick on 6/27/26.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .semibold))
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background(Color(hex: AppColor.purpleThemeColor))
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}
