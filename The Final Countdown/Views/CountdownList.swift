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
            VStack(alignment: .leading) {
                ForEach(countdownTimers, id: \.title) { countdown in
                    NavigationLink {
                        EditCountdown(countdown: countdown)
                    } label: {
                        VStack(alignment: .leading) {
                            Text(countdown.title)
                            Text(countdown.end.formatted())
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .navigationTitle("Countdown Timers")
            .navigationTitleColor(Color.white)
            .toolbar {
                NavigationLink {
                    EditCountdown(countdown: CountdownTimer(title: ""))
                } label: {
                    Text("New Countdown")
                }
            }
        }
        .task {
            context.insert(CountdownTimer(title: "The final countdown"))
            context.insert(CountdownTimer(title: "Another final countdown"))
            context.insert(CountdownTimer(title: "Yes the final countdown"))
        }
    }
}

#Preview {
    CountdownList()
        .modelContainer(for: CountdownTimer.self, inMemory: true)
}
