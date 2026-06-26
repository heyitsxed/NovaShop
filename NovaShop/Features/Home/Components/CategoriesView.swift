//
//  CategoriesView.swift
//  NovaShop
//
//  Created by Cedrick on 6/26/26.
//

import SwiftUI

struct CategoriesView: View {
    @State private var selectedCategoryID: UUID? = nil

    let categories = [
        CategoryItem(iconName: "shoe", name: "Shoes"),
        CategoryItem(iconName: "bag", name: "Bags"),
        CategoryItem(iconName: "tshirt", name: "Watches"),
        CategoryItem(iconName: "phone", name: "Clothing")
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text(AppStrings.Categories.title)
                    .font(.system(size: 18, weight: .semibold))
                Spacer()
                Button(AppStrings.Categories.seeAll) {
                    print("See all")
                }
            }
            .padding(.horizontal, 15)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 26) {
                    ForEach(categories, id: \.id) { category in
                        VStack {
                            ZStack {
                                Circle()
                                    .fill(selectedCategoryID == category.id ? .blue : Color(.systemGray3))
                                    .frame(width: 60, height: 60)
                                
                                Image(systemName: category.iconName)
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundColor(selectedCategoryID == category.id ? .white : .primary)
                                    .frame(width: 20, height: 20)
                            }
                            
                            Text(category.name)
                                .font(.system(size: 15, weight: .regular))
                                .multilineTextAlignment(.center)
                        }
                        .onTapGesture {
                            selectedCategoryID = category.id
                        }
                    }
                }
                .padding(.horizontal, 15)
            }
            .frame(height: 90)
        }
    }
}
