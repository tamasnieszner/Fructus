//
//  FruitNutrientView.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 05..
//

import SwiftUI

struct FruitNutrientView: View {
    // MARK: - Properties
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - Body
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { index in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.body.bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[index]).multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

// MARK: - Previews

struct FruitNutrientView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientView(fruit: fruitData[0]).previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
