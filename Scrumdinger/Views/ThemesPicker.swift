//
//  ThemesPicker.swift
//  Scrumdinger
//
//  Created by Mx R.G.MT on 2023/09/06.
//

import SwiftUI

struct ThemesPicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection){
            ForEach(Theme.allCases){theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

struct ThemesPicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemesPicker(selection: .constant(.periwrinkle))
    }
}
