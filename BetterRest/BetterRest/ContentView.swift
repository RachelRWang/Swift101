//
//  ContentView.swift
//  BetterRest
//
//  Created by Rachel Ruiheng Wang on 5/23/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in:4...12, step: 0.25)
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
        Text(Date.now, format: .dateTime.day().month().year())
    }
    
    func exampleDates() {
        // create a second Date instance set to one day in seconds from now
        let tomorrow = Date.now.addingTimeInterval(86400)

        // create a range from those two
        let range = Date.now...tomorrow
        
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        
        //    ?? operator is known as the nil-coalescing operator. It is used to provide a default value for an optional value that might be nil. If the optional has a value, it unwraps the optional and returns it. If the optional is nil, it returns the default value provided.
        let date = Calendar.current.date(from: components) ?? .now
    }
}

#Preview {
    ContentView()
}
