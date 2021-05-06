//
//  ExplorerRowView.swift
//  tvOS 01
//
//  Created by R. Kukuh on 29/04/21.
//

import SwiftUI

struct ExplorerCellView: View {
    var explorer: Explorer
    
    var body: some View {
        NavigationLink(destination: ExplorerDetailView(explorer: explorer)) {
            explorer.profilePicture
                .resizable()
                .cornerRadius(8)
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70, alignment: .center)
            
            VStack(alignment: .leading) {
                Text(explorer.name)
                    .font(.headline)
                
                Text(explorer.shift)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ExplorerCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExplorerCellView(explorer: explorers[0])
            ExplorerCellView(explorer: explorers[1])
        }
        .previewLayout(.fixed(width: 500, height: 100))
    }
}
