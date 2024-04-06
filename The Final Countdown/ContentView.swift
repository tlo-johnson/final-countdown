//
//  ContentView.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-06.
//

import SwiftUI

struct ContentView: View {
    @State var end: Date
    
    private let now = Date()
    
    var diffComponents: DateComponents { Calendar.current.dateComponents([.year, .day, .hour, .minute, .second], from: now, to: end)
    }

    var body: some View {
        VStack{
            HStack {
                Text(String(format: "%02d", diffComponents.year!)).font(.system(size: 75, weight: .bold))
                Text("YRS").baselineOffset(-30)
            }
            
            HStack {
                Text(String(format: "%02d", diffComponents.day!)).font(.system(size: 75, weight: .bold))
                Text("DAYS").baselineOffset(-30)
            }
            
            HStack {
                Text(String(format: "%02d", diffComponents.hour!)).font(.system(size: 75, weight: .bold))
                Text("HRS").baselineOffset(-30)
            }
            
            HStack {
                Text(String(format: "%02d", diffComponents.minute!)).font(.system(size: 75, weight: .bold))
                Text("MIN").baselineOffset(-30)
            }
            
            HStack {
                Text(String(format: "%02d", diffComponents.second!)).font(.system(size: 75, weight: .bold))
                Text("SEC").baselineOffset(-30)
            }
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background { Color.black.ignoresSafeArea() }
    }
}

#Preview {
    let seconds = 1.0
    let minutes = 60.0
    let hours = 60 * 60.0
    let days = 60 * 60 * 24.0
    let years = 60 * 60 * 24 * 365.0
    
    let end = Date()
        .addingTimeInterval(45 * seconds)
        .addingTimeInterval(30 * minutes)
        .addingTimeInterval(3 * hours)
        .addingTimeInterval(5 * days)
        .addingTimeInterval(7 * years)
    
    return ContentView(end: end)
}
