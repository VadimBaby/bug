//
//  MainView.swift
//  Test
//
//  Created by Вадим Мартыненко on 16.08.2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var viewModel: MainViewModel
    
    init(viewModel: MainViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        Button("go to settings", action: viewModel.input.goToSettings.send)
    }
}

#Preview {
    MainView(viewModel: .init(router: nil))
}
