//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Harry Jafari on 2/9/2024.
//

import SwiftUI

struct FeaturedTabView: View {
    
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top , 10)
                    .padding(.horizontal , 15)
                
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturedTabView()
        .background(Color.gray)
}
