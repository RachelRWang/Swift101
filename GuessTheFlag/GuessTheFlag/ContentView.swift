//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Rachel Ruiheng Wang on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    var body: some View {
        VStack(spacing: 20){
//            LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
//            LinearGradient(stops:[
//                Gradient.Stop(color: .white, location: 0.45),
//                Gradient.Stop(color: .black, location: 0.55)
//            ], startPoint: .top, endPoint: .bottom)
//            RadialGradient(colors:[.blue, .black], center: .center, startRadius: 20, endRadius: 200)
            AngularGradient(colors:[.red, .yellow, .green, .blue, .purple, .red], center: .center)
            Spacer()
            Text("Hello, world!")
                .frame(width: 500, height: 100)
                .foregroundStyle(.white)
                .background(.indigo.gradient)
            Text("This is another text view")
            Text ("Third")
            
//            Button("Delete selection")
//            {
//                print("Now deleting ...")
//            }
            
            Button("Show Alert", role: .destructive, action: executeDelete)
            
//            Button ("Edit", systemImage:"pencil"){
//                print("Button was tapped")
//            }
            
            Button {
                print("Button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil") //You can use Hstack here but Label is tipically designed for button
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
            }
            
            
            
//            Button ("Button1") {}
//                .buttonStyle(.bordered)
//            Button ("Button2") {}
//                .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .alert("Important message", isPresented: $showingAlert){
            Button("Delete", role: .destructive){}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("please read this.")
        }
        
        ZStack {
            VStack(spacing:0)
            {
                Image(decorative: "France")
                Image(systemName: "pencil.circle")
                    .foregroundStyle(.red)
                    .font(.largeTitle)
                Color.red
                Color.blue
            }
//            Color.red
//                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
            Text("Hello, world!")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
    
    func executeDelete() {
        showingAlert = true
        print("Now deleting ...")
    }
}

#Preview {
    ContentView()
}
