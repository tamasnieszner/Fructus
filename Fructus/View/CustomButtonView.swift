//
//  CustomButtonView.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 04..
//

import SwiftUI

struct CustomButtonView: View {
    // MARK: - Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - Body
    
    var body: some View {
        Button { isOnboarding = false }
            label: {
                HStack(spacing: 8) {
                    Text("Read More")
                    Image(systemName: "chevron.right.circle.fill").imageScale(.large)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
            }
            .accentColor(Color.white)
    }
}

// MARK: - Previews

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView().previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            
    }
}
