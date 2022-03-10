//
//  AboutRowView.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 05..
//

import SwiftUI

struct AboutRowView: View {
    // MARK: - Properties
    
    var title: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(title).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - Previews

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        AboutRowView(title: "Developer", content: "Tamás Nieszner").previewLayout(.sizeThatFits)
    }
}
