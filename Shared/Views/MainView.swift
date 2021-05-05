//
//  ContentView.swift
//  Shared
//
//  Created by R. Kukuh on 04/05/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Image(systemName: "photo")
            
            VStack(alignment: .leading) {
                Text("My Sandwich")
                    .font(.headline)
                
                Text("3 ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
