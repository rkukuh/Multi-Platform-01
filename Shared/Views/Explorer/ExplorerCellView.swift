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
        HStack {
            explorer.profilePicture
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .center)
            
            Text(explorer.name)
            
            Spacer()
        }
    }
}

struct ExplorerCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExplorerCellView(explorer: explorers[0])
            ExplorerCellView(explorer: explorers[1])
        }
        .previewLayout(.fixed(width: 500, height: 120))
    }
}
