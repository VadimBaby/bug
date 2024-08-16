//
//  TestApp.swift
//  Test
//
//  Created by Вадим Мартыненко on 16.08.2024.
//

import SwiftUI

@main
struct TestApp: App {
    
    @StateObject private var settings = Settings()
    
    var body: some Scene {
        WindowGroup {
            BaseCoordinator().view()
                .environmentObject(settings)
        }
    }
}
