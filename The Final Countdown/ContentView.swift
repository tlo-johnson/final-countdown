//
//  ContentView.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-06.
//

import SwiftUI
import SwiftData

struct ContentView: View {
        var body: some View {
        CountdownList()
    }
}

#Preview {
    return ContentView()
        .modelContainer(for: CountdownTimer.self, inMemory: true)
}
