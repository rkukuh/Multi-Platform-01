//
//  ExplorerRowView.swift
//  tvOS 01
//
//  Created by R. Kukuh on 29/04/21.
//

import SwiftUI

struct ExplorerRowView: View {
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

struct ExplorerRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExplorerRowView(explorer: explorers[0])
            ExplorerRowView(explorer: explorers[1])
        }
        .previewLayout(.fixed(width: 1000, height: 120))
    }
}
