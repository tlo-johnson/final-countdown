//
//  The_Final_CountdownApp.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-06.
//

import SwiftUI
import SwiftData

@main
struct The_Final_CountdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: CountdownTimer.self)
        }
    }
}
