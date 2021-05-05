//
//  ContentView.swift
//  Shared
//
//  Created by R. Kukuh on 04/05/21.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var store: SandwichStore
    
    var body: some View {
        NavigationView() {
            SandwichRow(sandwiches: store.sandwiches)
            
            Text("Select a sandwich")
                .font(.largeTitle)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(store: sandwichStore)
    }
}
