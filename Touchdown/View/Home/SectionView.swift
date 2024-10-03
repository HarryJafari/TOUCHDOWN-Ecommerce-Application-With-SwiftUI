//
//  SectionView.swift
//  Touchdown
//
//  Created by Harry Jafari on 30/9/2024.
//

import SwiftUI

struct SectionView: View {
    @State var rotateClockwise: Bool
    var body: some View {
        VStack {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .rotationEffect(Angle(degrees:rotateClockwise ? 90 : -90))
            Spacer()
        } // vstack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
        
    }
}

#Preview {
    SectionView(rotateClockwise: false)
        .frame(height: 240)
}
