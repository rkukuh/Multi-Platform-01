//
//  SandwichCell.swift
//  Multi Platform 01
//
//  Created by R. Kukuh on 05/05/21.
//

import SwiftUI

struct SandwichCell: View {
    var sandwich: Sandwich
    
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            Image(sandwich.thumbnailName)
                .resizable()
                .cornerRadius(8)
                .frame(width: 70.0, height: 70.0)
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                    .font(.headline)
                
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}


struct SandwichCell_Previews: PreviewProvider {
    static var previews: some View {
        SandwichCell(sandwich: sandwichData[0])
    }
}
