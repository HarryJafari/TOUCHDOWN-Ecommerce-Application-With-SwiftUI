//
//  AddToCartDetaiView.swift
//  Touchdown
//
//  Created by Harry Jafari on 3/10/2024.
//

import SwiftUI

struct AddToCartDetaiView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(
                red:shop.selectedProduct?.red ?? sampleProduct.red,
                green:shop.selectedProduct?.green  ?? sampleProduct.green,
                blue:shop.selectedProduct?.blue  ?? sampleProduct.blue
            )
        ).clipShape(Capsule())
    }
}

#Preview {
    AddToCartDetaiView()
        .environmentObject(Shop())
        .padding()
}
