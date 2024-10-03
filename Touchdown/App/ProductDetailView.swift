//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Harry Jafari on 1/10/2024.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5,content: {
            
            // NavBar
            NavigatiobarDetailView()
                .padding(.horizontal)
                .padding(.top , UIApplication.shared.windows.first?.safeAreaInsets.top)
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            // Detail
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            
            // Detail Bottom Part
            VStack(alignment: .center, spacing: 0, content: {
                
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                
                
                ScrollView(.vertical , showsIndicators: false , content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body , design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                QuantityFavoriteDetalView()
                    .padding(.vertical , 10)
                AddToCartDetaiView().padding(.bottom , 20)
            }) // VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top , -105)
            )
        }) // VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all , edges: .all)
        .background(
            Color( red:shop.selectedProduct?.red ?? sampleProduct.red,
                   green:shop.selectedProduct?.green ?? sampleProduct.green,
                   blue:shop.selectedProduct?.blue ?? sampleProduct.blue
                )
        ).ignoresSafeArea(.all , edges: .all)
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
