//
//  MainCoordinator.swift
//  Test
//
//  Created by Вадим Мартыненко on 16.08.2024.
//

import Foundation
import Stinsen
import SwiftUI
import Combine

final class MainCoordinator: NavigationCoordinatable {
    var stack = Stinsen.NavigationStack<MainCoordinator>(initial: \.start)
    
    @Root var start = makeMainView
    
    @Route(.push) var settings = makeSettingsView
}

private extension MainCoordinator {
    @ViewBuilder
    func makeMainView() -> some View {
        let viewModel = MainViewModel(router: self)
        MainView(viewModel: viewModel)
    }
    
    @ViewBuilder
    func makeSettingsView() -> some View {
        SettingsView()
    }
}
