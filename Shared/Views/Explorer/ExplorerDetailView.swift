//
//  ExplorerDetailView.swift
//  tvOS 01
//
//  Created by R. Kukuh on 29/04/21.
//

import SwiftUI

struct ExplorerDetailView: View {
    var explorer: Explorer
    
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            explorer.profilePicture
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
        }
        .edgesIgnoringSafeArea(.bottom)
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
