//
//  NovaShopApp.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import SwiftUI

@main
struct NovaShopApp: App {
    @State private var cart = CartManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(cart)
        }
    }
}
