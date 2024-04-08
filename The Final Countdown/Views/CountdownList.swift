//
//  CountdownList.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-08.
//

import SwiftUI

struct CountdownList: View {
    @StateObject var timers: CountdownTimers
        
    var body: some View {
        NavigationStack {
            List(timers.timers) { timer in
                NavigationLink {
                    EditCountdown(timers: timers, timer: timer)
                } label: {
                    Text(timer.title)
                }
            }
        }
    }
}

#Preview {
    let timers = CountdownTimers()
    timers.timers = [
        CountdownTimer(id: 0, title: "First Countdown Timer"),
        CountdownTimer(id: 1, title: "Another One"),
        CountdownTimer(id: 2, title: "A Third"),
    ]
    return CountdownList(timers: timers)
}
