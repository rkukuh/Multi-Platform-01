//
//  SandwichDetail.swift
//  Multi Platform 01
//
//  Created by R. Kukuh on 05/05/21.
//

import SwiftUI

struct SandwichDetail: View {
    let sandwich: Sandwich
    
    @State private var zoomed = false
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            
            Image(sandwich.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        zoomed.toggle()
                    }
                }
            
            Spacer(minLength: 0)
            
            if sandwich.isSpicy && !zoomed {
                HStack {
                    Spacer()
                    Label("Spicy", systemImage: "flame.fill")
                    Spacer()
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .font(.headline)
                .background(Color.red)
                .foregroundColor(.yellow)
                .transition(.move(edge: .trailing))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .navigationTitle(sandwich.name)
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                SandwichDetail(sandwich: sandwichData[1]) // spicy
            }
            NavigationView {
                SandwichDetail(sandwich: sandwichData[2]) // not spicy
            }
        }
    }
}
