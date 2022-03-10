//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 04..
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - Properties
    
    var fruit: Fruit
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //header
                    FruitDetailHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //nutrients
                        FruitNutrientView(fruit: fruit)
                        //subheadline
                        Text("learn more about \(fruit.title).".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //description
                        Text(fruit.description).multilineTextAlignment(.leading)
                        //link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 20)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Previews

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
