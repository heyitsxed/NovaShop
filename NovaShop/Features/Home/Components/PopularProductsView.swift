//
//  PopularProductsView.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import SwiftUI

struct PopularProductsView: View {
    
    var vm: HomeViewModel
    
    let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 5)
    ]
    
    var body: some View {
        HStack {
            Text(AppStrings.PopularProducts.title)
                .font(.system(size: 18, weight: .semibold))
            Spacer()
            Button(AppStrings.PopularProducts.seeAll) {
                print("See all")
            }
        }
        .padding(.horizontal, 15)
        
        LazyVGrid(columns: columns) {
            ForEach(vm.products, id: \.id) { product in
                NavigationLink(value: HomeNavigationDestination.productDetail(product)) {
                    ProductCardView(product: product)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal, 15)
    }
}
