//
//  Domain.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-08.
//

import Foundation
import SwiftData

@Model
class CountdownTimer {
    var title: String
    var end = Date()
    
    init(title: String) {
        self.title = title
    }
}
