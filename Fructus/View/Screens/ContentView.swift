//
//  ContentView.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 04..
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    @State private var isShowingAbout: Bool = false
    
    var fruits: [Fruit] = fruitData
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    NavigationLink {
                        FruitDetailView(fruit: fruit)
                    } label: {
                        FruitRowView(fruit: fruit).padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: { isShowingAbout = true }) {
                               Image(systemName: "line.3.horizontal").imageScale(.large)
                    }
            )
            .sheet(isPresented: $isShowingAbout) {
                AboutView()
           }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
