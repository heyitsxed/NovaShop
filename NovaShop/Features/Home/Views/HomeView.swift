//
//  HomeView.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    @State private var selectedProduct: UUID? = nil
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                GreetingHeaderView()
                SearchBarView(
                    searchText: ""
                )
                
                BannerView()
                CategoriesView()
                
                PopularProductsView(
                    selectedProduct: $selectedProduct
                )
                
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
