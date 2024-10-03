//
//  NavigatiobarDetailView.swift
//  Touchdown
//
//  Created by Harry Jafari on 1/10/2024.
//

import SwiftUI

struct NavigatiobarDetailView: View {
    
    @EnvironmentObject var shop: Shop
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }) // Button
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }) // Button
        }
        .padding(.horizontal , 12)
    }
}

#Preview {
    NavigatiobarDetailView()
        .environmentObject(Shop())
        .background(.green)
}
