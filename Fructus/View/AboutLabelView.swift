//
//  AboutLabelView.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 05..
//

import SwiftUI

struct AboutLabelView: View {
    // MARK: - Properties
    
    var label: String
    var icon: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(label.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: icon)
        }
    }
}

// MARK: - Previews

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        AboutLabelView(label: "fructus", icon: "info.circle").previewLayout(.sizeThatFits)
    }
}
