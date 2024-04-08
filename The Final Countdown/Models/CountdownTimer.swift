//
//  Domain.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-08.
//

import Foundation

struct CountdownTimer: Identifiable {
    var id: Int
    var title: String
    var end = Date()
    
    init(id: Int, title: String) {
        self.id = id
        self.title = title
    }
}

@Observable
class CountdownTimers: ObservableObject {
    var countdownTimers: [CountdownTimer] = []
}
