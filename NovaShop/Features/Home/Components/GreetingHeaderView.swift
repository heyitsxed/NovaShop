//
//  GreetingHeaderView.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import SwiftUI

struct GreetingHeaderView: View {
    var body: some View {
        HStack {
            Text(AppStrings.Home.greeting)
                .font(.system(size: 22, weight: .semibold))
            Spacer()
            Image(systemName: "bell")
                .font(.system(size: 22))
        }
        .padding(.horizontal, 15)
    }
}
