//
//  ContentView.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-06.
//

import SwiftUI

struct ContentView: View {
    var timers: CountdownTimers = CountdownTimers()
    
    var body: some View {
        CountdownList(timers: timers)
    }
}

#Preview {
    var timers = CountdownTimers()
    timers.countdownTimers = [
        CountdownTimer(id: 0, title: "First Countdown Timer"),
        CountdownTimer(id: 1, title: "Another One"),
        CountdownTimer(id: 2, title: "A Third"),
    ]
    return ContentView(timers: timers)
}
