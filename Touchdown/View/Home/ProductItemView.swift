//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Harry Jafari on 30/9/2024.
//

import SwiftUI

struct ProductItemView: View {
    let product: ProductModel
    var body: some View {
        VStack(alignment: .leading,spacing: 6) {
            // photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } // ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formatedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
       
    }
}

#Preview {
    ProductItemView(product: products[0])
        .frame(width: 200 , height: 300)
}
