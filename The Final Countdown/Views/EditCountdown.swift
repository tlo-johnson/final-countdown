//
//  EditCountdown.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-06.
//

import SwiftUI
import SwiftData

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
                TextField("", text: $countdown.title, prompt: Text("It's the final countdown"))
                    .multilineTextAlignment(.trailing)
            }
            .padding(.bottom, 20)
            
            DatePicker("End Date:", selection: $countdown.end)
                .padding(.bottom, 30)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    Text("Issues initializing preview. See commented out code")

    /*
    var container = ModelContainer(for: CountdownTimer.self)
    return EditCountdown(countdown: CountdownTimer(title: "Yours"))
        .modelContainer(for: CountdownTimer.self, inMemory: true)
     */
}
