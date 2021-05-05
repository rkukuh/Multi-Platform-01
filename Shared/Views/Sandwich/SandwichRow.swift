//
//  SandwichRow.swift
//  Multi Platform 01
//
//  Created by R. Kukuh on 05/05/21.
//

import SwiftUI

struct SandwichRow: View {
    let sandwiches: [Sandwich]
    
    var body: some View {
        List {
            ForEach(sandwiches) { sandwich in
                SandwichCell(sandwich: sandwich)
            }
            
            HStack {
                Spacer()
                Text("\(sandwiches.count) Sandwiches")
                    .foregroundColor(.secondary)
                Spacer()
            }
        }
        .navigationTitle("Sandwiches")
    }
}

struct SandwichRow_Previews: PreviewProvider {
    static var previews: some View {
        SandwichRow(sandwiches: sandwichData)
    }
}
