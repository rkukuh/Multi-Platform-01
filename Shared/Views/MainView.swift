//
//  ExplorerMainView.swift
//  tvOS 01
//
//  Created by R. Kukuh on 29/04/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView() {
            List(explorers, id: \.self) { explorer in
                ExplorerCellView(explorer: explorer)
            }
            .navigationTitle("Explorers")
            
            Text("Select an Explorers")
                .font(.largeTitle)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
            
            #if os(iOS)
            MainView()
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
            #endif
        }
    }
}
