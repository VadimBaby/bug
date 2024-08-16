//
//  SettingsView.swift
//  Test
//
//  Created by Вадим Мартыненко on 16.08.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject private var settings: Settings
    
    var body: some View {
        VStack {
            Text("Type Something")
            TextField("placeholder", text: $settings.text)
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(Settings())
}
