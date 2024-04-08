//
//  EditCountdown.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-06.
//

import SwiftUI

struct EditCountdown: View {
    var timers: CountdownTimers
    
    var timer: CountdownTimer
    
    var countdownIndex: Int { timers.timers.firstIndex { $0.id == timer.id }!}
    
    var body: some View {
        @Bindable var timers = timers
        
        VStack {
            HStack {
                Text("Title")
                Spacer()
                TextField("", text: $timers.timers[countdownIndex].title)
            }
            DatePicker("End Date:", selection: $timers.timers[countdownIndex].end)
        }
        .padding()
    }
}

#Preview {
    var timers = CountdownTimers()
    var timer = CountdownTimer(id: 0, title: "It's the final countdown")
    timers.timers.append(timer)
    
    return EditCountdown(timers: timers, timer: timer)
}
