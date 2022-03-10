//
//  FruitDetailHeaderView.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 05..
//

import SwiftUI

struct FruitDetailHeaderView: View {
    // MARK: - Properties
    
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1 : 0.6)
        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.6)) {
                isAnimating = true
            }
        }
    }
}

// MARK: - Previews

struct FruitDetailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailHeaderView(fruit: fruitData[0]).previewLayout(.sizeThatFits)
    }
}
