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
            List(timers.countdownTimers) { timer in
                NavigationLink {
                    EditCountdown(timers: timers, timer: timer)
                } label: {
                    VStack(alignment: .leading) {
                        Text(timer.title)
                        Text(timer.end.formatted())
                    }
                }
            }
            
            List(timers.countdownTimers) { countdownTimer in
                NavigationLink {
                    CountdownDetail(countdownTimer: countdownTimer)
                } label: {
                    VStack(alignment: .leading) {
                        Text(countdownTimer.title)
                        Text(countdownTimer.end.formatted())
                    }
                }
            }
        }
    }
}

#Preview {
    let timers = CountdownTimers()
    timers.countdownTimers = [
        CountdownTimer(id: 0, title: "First Countdown Timer"),
        CountdownTimer(id: 1, title: "Another One"),
        CountdownTimer(id: 2, title: "A Third"),
    ]
    return CountdownList(timers: timers)
}
