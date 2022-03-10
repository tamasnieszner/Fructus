//
//  AboutView.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 05..
//

import SwiftUI

struct AboutView: View {
    // MARK: - Properties
    
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - FructusSection
                    
                    GroupBox(label: AboutLabelView(label: "fructus", icon: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                                
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.").font(.footnote)
                        }
                    }
                    
                    // MARK: - RestartSection
                    
                    GroupBox(label: AboutLabelView(label: "restart", icon: "arrow.counterclockwise")) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way you will see the welcome screen again.")
                            .padding(.top, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("restarted".uppercased())
                                    .fontWeight(.semibold)
                                    .foregroundColor(.green)
                            } else {
                                Text("restart".uppercased())
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.leading, 10)
                        .padding(6)
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: - ApplicationSection
                    
                    GroupBox(label: AboutLabelView(label: "application", icon: "apps.iphone")) {
                        AboutRowView(title: "Developer", content: "Tamás Nieszner")
                        AboutRowView(title: "Designer", content: "Róbert Petrás")
                        AboutRowView(title: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        AboutRowView(title: "Twitter", linkLabel: "@telcsifiju", linkDestination: "twitter.com/telcsifiju")
                        AboutRowView(title: "Compatibility", content: "iOS 15, iPadOS 15")
                        AboutRowView(title: "Version", content: "1.2.0")
                    }
                }
                .navigationBarTitle("About", displayMode: .large)
                .navigationBarItems(trailing: Button(action: { dismiss() }) {
                                                    Image(systemName: "xmark") }).padding()
            }
        }
    }
}

// MARK: - Previews

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
