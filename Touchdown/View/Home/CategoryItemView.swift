//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Harry Jafari on 30/9/2024.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    let category: CategoryModel
    
    // MARK: - BODY
    var body: some View {
        Button(action: {} , label: {
            HStack(alignment: .center, spacing: 10) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30 , height: 30 , alignment: .center)
                    .foregroundColor(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Spacer()
            }// HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray , lineWidth: 1)
            )
        })
    }
}

#Preview {
    CategoryItemView(category: categories[0])
}
