//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by AJ Grant on 11/14/22.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        HStack {
            Picker("Theme", selection: $selection){
                ForEach(Theme.allCases){ theme in
                    ThemeView(theme: theme)
                        .tag(theme)
                }
            }
            .pickerStyle(NavigationLinkPickerStyle())
        }
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.periwinkle))
    }
}
