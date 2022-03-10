//
//  Fruit.swift
//  Fructus
//
//  Created by Tamás Nieszner on 2021. 11. 04..
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
