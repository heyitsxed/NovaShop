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
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray2), lineWidth: 1)
        }
        .padding(.horizontal, 15)
    }
}
