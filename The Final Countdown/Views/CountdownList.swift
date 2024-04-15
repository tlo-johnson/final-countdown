//
//  CountdownList.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-08.
//

import SwiftUI
import SwiftData

struct CountdownList: View {
    @Query private var countdownTimers: [CountdownTimer]
    @Environment(\.modelContext) private var context
        
    var body: some View {
        NavigationStack {
            List(countdownTimers, id: \.title) { countdown in
                NavigationLink {
                    EditCountdown(countdown: countdown)
                } label: {
                    VStack(alignment: .leading) {
                        Text(countdown.title)
                        Text(countdown.end.formatted())
                    }
                }
            }
            .navigationTitle("Countdown Timers")
            .toolbar {
                NavigationLink {
                    EditCountdown(countdown: CountdownTimer(title: ""))
                } label: {
                    Text("New Countdown")
                }
            }
            
            List(countdownTimers, id: \.title) { countdownTimer in
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
        .task {
            context.insert(CountdownTimer(title: "The final countdown"))
        }
    }
}

#Preview {
    CountdownList()
        .modelContainer(for: CountdownTimer.self, inMemory: true)
}
