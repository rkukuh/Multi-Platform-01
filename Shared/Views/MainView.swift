//
//  ContentView.swift
//  Shared
//
//  Created by R. Kukuh on 04/05/21.
//

import SwiftUI

struct MainView: View {
    let sandwiches: [Sandwich]
    
    var body: some View {
        NavigationView() {
            SandwichRow(sandwiches: sandwiches)
            
            Text("Select a sandwich")
                .font(.largeTitle)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(sandwiches: sandwichData)
    }
}
