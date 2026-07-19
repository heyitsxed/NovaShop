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
        ProductCategory(iconName: "shoe", name: "Shoes"),
        ProductCategory(iconName: "bag", name: "Bags"),
        ProductCategory(iconName: "tshirt", name: "Clothing"),
        ProductCategory(iconName: "phone", name: "Devices")
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
                                    .fill(selectedCategoryID == category.id ? Color(hex: AppColor.purpleThemeColor) : Color(.white))
                                    .frame(width: 60, height: 60)
                                    .shadow(color: Color.black.opacity(0.1), radius: 15, x: 0, y: 10)
                                
                                Image(systemName: category.iconName)
                                    .resizable()
                                    .scaledToFit()
                                    .fontWeight(.semibold)
                                    .foregroundColor(selectedCategoryID == category.id ? .white : Color(hex: AppColor.purpleThemeColor))
                                    .frame(width: 25, height: 25)
                            }
                            
                            Text(category.name)
                                .font(.system(size: 13, weight: .semibold))
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
