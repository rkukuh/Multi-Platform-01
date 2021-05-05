//
//  ContentView.swift
//  Shared
//
//  Created by R. Kukuh on 04/05/21.
//

import SwiftUI

struct MainView: View {
    var sandwiches: [Sandwich] = []
    
    var body: some View {
        NavigationView {
            List(sandwiches) { sandwich in
                NavigationLink(destination: Text(sandwich.name)) {
                    Image(sandwich.thumbnailName)
                        .resizable()
                        .cornerRadius(8)
                        .frame(width: 75.0, height: 75.0)
                    
                    VStack(alignment: .leading) {
                        Text(sandwich.name)
                            .font(.headline)
                        
                        Text("\(sandwich.ingredientCount) ingredients")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Sandwich")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(sandwiches: SandwichData)
    }
}
