//
//  BaseCoordinator.swift
//  Test
//
//  Created by Вадим Мартыненко on 16.08.2024.
//

import Foundation
import Stinsen

final class BaseCoordinator: NavigationCoordinatable {
    var stack = Stinsen.NavigationStack<BaseCoordinator>(initial: \.start)
    
    @Root var start = makeMain
    
    private func makeMain() -> NavigationViewCoordinator<MainCoordinator> {
        NavigationViewCoordinator(MainCoordinator())
    }
}
