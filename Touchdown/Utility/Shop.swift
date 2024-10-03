//
//  Shop.swift
//  Touchdown
//
//  Created by Harry Jafari on 3/10/2024.
//

import Foundation
class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductModel? = nil
}
