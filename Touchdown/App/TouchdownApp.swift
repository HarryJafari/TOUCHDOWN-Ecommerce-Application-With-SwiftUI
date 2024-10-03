//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Harry Jafari on 30/8/2024.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
