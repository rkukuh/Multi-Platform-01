//
//  Multi_Platform_01App.swift
//  Shared
//
//  Created by R. Kukuh on 04/05/21.
//  WWDC20: Introduction to SwiftUI
//

import SwiftUI

@main
struct Multi_Platform_01App: App {
    var body: some Scene {
        WindowGroup {
            MainView(sandwiches: sandwichData)
        }
    }
}
