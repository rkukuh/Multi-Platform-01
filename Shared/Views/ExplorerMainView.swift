//
//  ExplorerMainView.swift
//  tvOS 01
//
//  Created by R. Kukuh on 29/04/21.
//

import SwiftUI

struct ExplorerMainView: View {
    var body: some View {
        NavigationView() {
            ExplorerListView()
        }
    }
}

struct ExplorerMainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ExplorerMainView()
            
            ExplorerMainView()
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
        }
    }
}
