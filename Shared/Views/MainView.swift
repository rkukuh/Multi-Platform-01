//
//  ContentView.swift
//  Shared
//
//  Created by R. Kukuh on 04/05/21.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var store: SandwichStore
    
    var body: some View {
        NavigationView() {
            List {
                ForEach(store.sandwiches) { sandwich in
                    SandwichCell(sandwich: sandwich)
                }
                .onMove(perform: moveSandwiches)
                .onDelete(perform: deleteSandwiches)
                
                HStack {
                    Spacer()
                    Text("\(store.sandwiches.count) Sandwiches")
                        .foregroundColor(.secondary)
                    Spacer()
                }
            }
            .navigationTitle("Sandwiches")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    #if os(iOS)
                        EditButton()
                    #endif
                }
                
                ToolbarItem(placement: .primaryAction) {
                    Button("Add", action: makeSandwich)
                }
            }
            
            Text("Select a sandwich")
                .font(.largeTitle)
        }
    }
    
    func makeSandwich() {
        withAnimation {
            store.sandwiches.append(
                Sandwich(name: "Patty melt", ingredientCount: 5, isSpicy: true)
            )
        }
    }
    
    func deleteSandwiches(offsets: IndexSet) {
        withAnimation {
            store.sandwiches.remove(atOffsets: offsets)
        }
    }
    
    func moveSandwiches(from: IndexSet, to: Int) {
        withAnimation {
            store.sandwiches.move(fromOffsets: from, toOffset: to)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView(store: sandwichStore)
                .preferredColorScheme(.light)
            
            MainView(store: sandwichStore)
                .preferredColorScheme(.dark)
            
            MainView(store: sandwichStore)
                .preferredColorScheme(.light)
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
            
            MainView(store: sandwichStore)
                .preferredColorScheme(.dark)
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
        }
    }
}
