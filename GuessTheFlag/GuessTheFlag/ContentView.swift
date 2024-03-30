//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Rachel Ruiheng Wang on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    //@State can be change when program runs
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View
    {
        ZStack{
//            LinearGradient(colors:[.blue, .black], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                VStack(spacing: 15) {
                    Text("Guess the Flag")
                        .font(.largeTitle.weight(.bold))
                        .foregroundStyle(.white)
                    VStack {
                        Text("Tap the flag of").foregroundStyle(.white)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer]).foregroundStyle(.white)
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            // flag was tapped
                            flagTapped(number)
                        } label: {
                            Image(countries[number]).clipShape(.capsule)
                                .shadow(radius: 5)
                            
                        }
                    }
                    
                    .frame(maxWidth:.infinity)
                    .padding(.vertical, 20)
                    .background(.regularMaterial)
                    .clipShape(.rect(cornerRadius: 20))
                    
                    Spacer()
                    Spacer()
                    
                    Text("Score: ???")
                        .foregroundStyle(.white)
                        .font(.title.bold())
                    Spacer()
                }
            }
            .alert(scoreTitle, isPresented: $showingScore)
            {
                Button("Contine", action: askQuestion)
            }message: {
                Text("Your score is ???")
            }
        }
   
    }
    
    func flagTapped(_ number: Int)
    {
        if (number == correctAnswer){
            scoreTitle = "Correct"
        }
        else
        {
            scoreTitle = "wrong"
        }
        
        showingScore = true
    }
    
    func askQuestion()
    {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}

//@State private var showingAlert = false
//    var body: some View {
//        VStack(spacing: 20){
////            LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
////            LinearGradient(stops:[
////                Gradient.Stop(color: .white, location: 0.45),
////                Gradient.Stop(color: .black, location: 0.55)
////            ], startPoint: .top, endPoint: .bottom)
////            RadialGradient(colors:[.blue, .black], center: .center, startRadius: 20, endRadius: 200)
//            AngularGradient(colors:[.red, .yellow, .green, .blue, .purple, .red], center: .center)
//            Spacer()
//            Text("Hello, world!")
//                .frame(width: 500, height: 100)
//                .foregroundStyle(.white)
//                .background(.indigo.gradient)
//            Text("This is another text view")
//            Text ("Third")
//
////            Button("Delete selection")
////            {
////                print("Now deleting ...")
////            }
//
//            Button("Show Alert", role: .destructive, action: executeDelete)
//
////            Button ("Edit", systemImage:"pencil"){
////                print("Button was tapped")
////            }
//
//            Button {
//                print("Button was tapped")
//            } label: {
//                Label("Edit", systemImage: "pencil") //You can use Hstack here but Label is tipically designed for button
//                    .padding()
//                    .foregroundColor(.white)
//                    .background(.red)
//            }
//
//
//
////            Button ("Button1") {}
////                .buttonStyle(.bordered)
////            Button ("Button2") {}
////                .buttonStyle(.borderedProminent)
//
//            Spacer()
//        }
//        .alert("Important message", isPresented: $showingAlert){
//            Button("Delete", role: .destructive){}
//            Button("Cancel", role: .cancel) {}
//        } message: {
//            Text("please read this.")
//        }
//
//        ZStack {
//            VStack(spacing:0)
//            {
//                Image(decorative: "France")
//                Image(systemName: "pencil.circle")
//                    .foregroundStyle(.red)
//                    .font(.largeTitle)
//                Color.red
//                Color.blue
//            }
////            Color.red
////                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//            Text("Hello, world!")
//                .foregroundStyle(.secondary)
//                .padding(50)
//                .background(.ultraThinMaterial)
//        }
//        .ignoresSafeArea()
//    }
//
//    func executeDelete() {
//        showingAlert = true
//        print("Now deleting ...")
//    }
