//
//  ExplorerDetailView.swift
//  tvOS 01
//
//  Created by R. Kukuh on 29/04/21.
//

import SwiftUI

struct ExplorerDetailView: View {
    var explorer: Explorer
    
    var body: some View {
        explorer.profilePicture
            .resizable()
            .aspectRatio(contentMode: .fit)
            .navigationTitle(explorer.name)
    }
}

struct ExplorerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExplorerDetailView(explorer: explorers[30])
        }
    }
}
