//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Harry Jafari on 1/10/2024.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal , showsIndicators: false, content:  {
            LazyHGrid(rows: gridLayout,spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                    
                }
            })
        })
    }
}

#Preview {
    BrandGridView()
}
