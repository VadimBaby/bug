//
//  MainViewModel.swift
//  Test
//
//  Created by Вадим Мартыненко on 16.08.2024.
//

import Foundation
import Combine

final class MainViewModel: ObservableObject {
    let input: Input
    
    private weak var router: MainRouterView? = nil
    
    private var cancellables: Set<AnyCancellable> = .init()
    
    init(router: MainRouterView? = nil) {
        self.input = Input()
        self.router = router
        
        self.bind()
    }
}

private extension MainViewModel {
    func bind() {
        input.goToSettings
            .sink { [weak self] in
                self?.router?.goToSettings()
            }
            .store(in: &cancellables)
    }
}

extension MainViewModel {
    struct Input {
        let goToSettings = PassthroughSubject<Void, Never>()
    }
}
