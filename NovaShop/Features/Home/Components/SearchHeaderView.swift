//
//  SearchHeaderView.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import SwiftUI

struct SearchBarView: View {
    @State var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            
            TextField(AppStrings.Home.searchPlaceHolder, text: $searchText)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.words)
            
            if !searchText.isEmpty {
                Button {
                    searchText = ""
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
        .background(Color(.white))
        .shadow(color: Color.black.opacity(0.1), radius: 15, x: 0, y: 10)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.black), lineWidth: 0.2)
        }
        .padding(.horizontal, 15)
    }
}
