//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Harry Jafari on 2/9/2024.
//

import SwiftUI

struct FeaturedItemView: View {
    let player: PlayerModel
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    FeaturedItemView(player: players[1])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
