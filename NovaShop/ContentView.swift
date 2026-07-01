//
//  ContentView.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
        }
    }
}

#Preview {
    ContentView()
        .environment(CartManager())

}
