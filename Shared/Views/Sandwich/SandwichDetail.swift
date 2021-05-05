//
//  SandwichDetail.swift
//  Multi Platform 01
//
//  Created by R. Kukuh on 05/05/21.
//

import SwiftUI

struct SandwichDetail: View {
    var sandwich: Sandwich
    
    @State private var zoomed = false
    
    var body: some View {
        Image(sandwich.imageName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .onTapGesture {
                withAnimation {
                    zoomed.toggle()
                }
            }
            .edgesIgnoringSafeArea(.bottom)
            
            .navigationTitle(sandwich.name)
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SandwichDetail(sandwich: sandwichData[2])
        }
    }
}
