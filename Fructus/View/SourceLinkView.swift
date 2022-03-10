//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 05..
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - Body
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.org")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

// MARK: - Previews

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView().previewLayout(.sizeThatFits)
    }
}
