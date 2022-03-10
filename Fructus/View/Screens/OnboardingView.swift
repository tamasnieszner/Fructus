//
//  OnboardingView.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 04..
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    
    var fruits: [Fruit] = fruitData.shuffled()
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle()).padding(.vertical, 20)
    }
}

// MARK: - Previews

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
