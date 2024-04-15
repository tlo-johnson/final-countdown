//
//  EditCountdown.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-06.
//

import SwiftUI

struct EditCountdown: View {
    @Environment(\.modelContext) private var context
    @State var countdown: CountdownTimer
    
    func saveChanges() {
        context.insert(countdown)
    }

    var body: some View {
        VStack {
            HStack {
                Text("Title")
                Spacer()
                TextField("", text: $countdown.title)
            }
            DatePicker("End Date:", selection: $countdown.end)
            Button("Save", action: saveChanges)
        }
        .padding()
    }
}

#Preview {
    var countdown = CountdownTimer(title: "Your New Timer")
    return EditCountdown(countdown: countdown)
        .modelContainer(for: CountdownTimer.self, inMemory: true)
}
