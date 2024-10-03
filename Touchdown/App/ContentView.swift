//
//  ContentView.swift
//  Touchdown
//
//  Created by Harry Jafari on 30/8/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIED
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top , UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.1), radius: 5 , x:0 , y:5)
                    
                    ScrollView(.vertical, showsIndicators: false , content: {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                            //.frame (height: UIScreen.main.bounds.width / 1.475)
                                .frame(minHeight: 256)
                                .padding(.vertical, 10)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Halmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15 , content:  {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            })// Gride
                            .padding(15)
                            
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                                .padding(.horizontal , 12)
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    })
                    
                    
                }//Vstack
                .background(colorBackground.ignoresSafeArea(.all , edges: .all))
            } else {
                ProductDetailView()
            }
        }//ZStack
        .ignoresSafeArea(.all , edges: .top)
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
