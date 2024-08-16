//
//  MainRouterView.swift
//  Test
//
//  Created by Вадим Мартыненко on 16.08.2024.
//

import Foundation

protocol MainRouterView: AnyObject {
    func goToSettings()
}

extension MainCoordinator: MainRouterView {
    func goToSettings() {
        self.route(to: \.settings)
    }
}
