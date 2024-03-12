//
//  ContentView.swift
//  WeSplit
//
//  Created by Rachel Wang on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    // we want to be able to change values while our program runs, but Swift won’t let us because our views are structs
    //property wrapper There are several ways of storing program state in SwiftUI @State is specifically designed for simple properties that are stored in one view. Swift UI can only read
    //why struct not class: it’s worthwhile: as you progress you’ll learn that SwiftUI destroys and recreates your structs frequently, so keeping them small and simple is important for performance.
    
    
    @State private var tapCount = 0
    //$: two way binding, swift UI can read and write
    // we bind the text field so that it shows the value of our property, but we also bind it so that any changes to the text field also update the property.
    @State private var name = ""
    
//    One of the great things about the @State property wrapper is that it automatically watches for changes, and when something happens it will automatically re-invoke the body property. That’s a fancy way of saying it will reload your UI to reflect the changed state, and it’s a fundamental feature of the way SwiftUI works.
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    // This is exactly like a regular @State property, except it’s specifically designed to handle input focus in our UI.
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    // computed var will be recalcuated when swift UI state changes.
    var totalPerPerson: Double {
        // calculate the total per perosn here
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    
    let students = ["Harry", "Herminone", "Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, world!")
                }
                .padding()
        NavigationStack{
            Form {
                Section {
                    Text("Hello, word!")
                }

                Section {
                    Text("Hello, word!")
                    Text("Hello, word!")
                }

                Button("Tap Count: \(tapCount)")
                {
                    tapCount += 1
                }
                //it creates a two-way binding: the value of the property is read, but also written.
                TextField("Enter your name", text:$name)
                Text("Your name is \(name)")
                //The dollar sign ($) is used as a shorthand for the parameter name when you provide a closure that takes a single element from the collection.

                Picker("Selected your student", selection: $selectedStudent)
                {
                    //SwiftUI needs to be able to identify every view on the screen uniquely, so it can detect when things change.
                    //\.self, which means “the strings themselves are unique.”
                    //This does of course mean that if you added duplicate strings to the students array you might hit problems, but here it’s just fine.
                    ForEach(students, id:\.self)
                    {
                        //In Swift closures, including SwiftUI view builder closures, the $ can be used as a shorthand for the parameter names.
                        Text("Row \($0)")
                    }
                }
                
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD")).focused($amountIsFocused)
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }
                
                Section ("How much do you want to tip?"){
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self)
                        {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .toolbar{
                if amountIsFocused {
                    Button("Done"){
                        amountIsFocused = false
                    }
                }
            }
            .navigationTitle("We Split")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
