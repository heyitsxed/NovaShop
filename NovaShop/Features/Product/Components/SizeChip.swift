//
//  SizeChip.swift
//  NovaShop
//
//  Created by Cedrick on 6/27/26.
//

import SwiftUI

struct SizeChip: View {
    let size: ProductSize
    let isSelected: Bool

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(isSelected ? Color(hex: AppColor.purpleThemeColor) : Color.white)
                .frame(width: 60, height: 45)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray), lineWidth: 1)
                }
            
            Text(size.size)
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(isSelected ? .white : .black)
        }
    }
}
