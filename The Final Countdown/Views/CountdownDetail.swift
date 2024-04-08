//
//  Countdown.swift
//  The Final Countdown
//
//  Created by Tolu A on 2024-04-06.
//

import SwiftUI

struct CountdownDetail: View {
    @State var currentDate = Date()

    var end: Date

    var diffComponents: DateComponents { Calendar.current.dateComponents([.year, .day, .hour, .minute, .second], from: currentDate, to: end)
    }

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

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
        .onReceive(timer) { _ in self.currentDate = Date() }
    }
}

#Preview {
    let isoDate = "2024-05-14T00:00:00-0600"
    let dateFormatter = ISO8601DateFormatter()
    let date = dateFormatter.date(from:isoDate)!

    return CountdownDetail(end: date)
}
