//
//  SandwichStore.swift
//  Multi Platform 01
//
//  Created by R. Kukuh on 05/05/21.
//

import Foundation

class SandwichStore: ObservableObject {
    @Published var sandwiches: [Sandwich]
    
    init(sandwiches: [Sandwich] = []) {
        self.sandwiches = sandwiches
    }
}

let sandwichStore = SandwichStore(sandwiches: sandwichData)
