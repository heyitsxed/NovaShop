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
    
    @State private var viewModel = HomeViewModel()
    @Environment(CartManager.self) private var cart

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    GreetingHeaderView()
                    
                    SearchBarView(
                        searchText: ""
                    )
                    
                    BannerView()
                    CategoriesView()
                    
                    PopularProductsView(
                        vm: viewModel
                    )
                    
                    Spacer()
                }
            }
            .navigationDestination(for: HomeNavigationDestination.self) { destination in
                switch destination {
                case .productDetail(let product):
                    ProductDetailView(product: product)
                }
            }
        }
    }
}

#Preview {
    HomeView()
        .environment(CartManager())
}
