//
//  Constant.swift
//  Touchdown
//
//  Created by Harry Jafari on 30/8/2024.
//

import SwiftUI

// DATA

let players: [PlayerModel] = Bundle.main.decode("player.json")

let categories: [CategoryModel] = Bundle.main.decode("category.json")

let products: [ProductModel] = Bundle.main.decode("product.json")

let brands: [BrandModel] = Bundle.main.decode("brand.json")

let sampleProduct: ProductModel = products[0]

// Color

let colorBackground: Color = Color ("ColorBackground" )
let colorGray: Color = Color(UIColor.systemGray4)


// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible() , spacing: rowSpacing), count: 2)
}

// UX

let feedback = UIImpactFeedbackGenerator(style: .medium)
// API
// IMAGE
// FONT
// STRING
// MISC
