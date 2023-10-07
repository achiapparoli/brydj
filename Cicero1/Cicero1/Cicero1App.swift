//
//  Cicero1App.swift
//  Cicero1
//
//  Created by Alberto Chiapparoli on 30/09/23.
//

import SwiftUI

@main
struct Cicero1App: App {
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(SessionManager.shared) // Passing the session manager
        }
    }
}
