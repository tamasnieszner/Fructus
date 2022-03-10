//
//  FruitCardView.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 04..
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    
    @State private var isAnimating: Bool = false
    
    var fruit: Fruit
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 2, x: 2, y: 2)
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                CustomButtonView()
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.6)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - Previews

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitData[3]).previewLayout(.sizeThatFits)
    }
}
