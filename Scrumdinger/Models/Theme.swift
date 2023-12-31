//
//  Theme.swift
//  Scrumdinger
//
//  Created by Mx R.G.MT on 2023/09/04.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable, Codable{
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwrinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    var accentColor: Color{
        switch self {
        case .bubblegum, .buttercup, .lavender, .orange, .periwrinkle, .poppy, . seafoam, .sky, .tan,  .yellow: return .black
        case .indigo, .magenta, .teal, .navy, .oxblood, .purple: return .white
        }
    }
     
    var mainColor: Color{
        Color(rawValue)
    }
    
    var name: String {
        rawValue.capitalized
    }
    
    var id: String {
        name
    }
}
