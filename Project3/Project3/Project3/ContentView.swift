//
//  ContentView.swift
//  Project3
//
//  Created by Rachel Ruiheng Wang on 5/22/24.
//

import SwiftUI

//View Composition wrap them up in a new custom view
struct CapsuleText: View {
    var text: String

    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}

//To create a custom modifier, create a new struct that conforms to the ViewModifier protocol.
// custom view modifiers can have their own stored properties, whereas extensions to View cannot.

struct Title: ViewModifier {
    func body(content: Content) -> some View
    {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

//When working with custom modifiers, it’s usually a smart idea to create extensions on View that make them easier to use.
extension View {
    func titleStyle() -> some View
    {
        modifier(Title())
    }
}

//modifiers return new objects rather than modifying existing ones
struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    //view as property
    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    
    //Swift doesn’t let us create one stored property that refers to other stored properties, because it would cause problems when the object is created.
    // you can create computed properties if you want
    //unlike the body property, Swift won’t automatically apply the @ViewBuilder attribute here, so if you want to send multiple views back you have three options.
    
    // place them in a stack
    var spells1: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    //you can also send back a Group. When this happens, the arrangement of your views is determined by how you use them elsewhere in your code:
    var spells2: some View {
        Group {
            Text("Lumos")
            Text("Obliviate")
        }
    }
    
    //add the @ViewBuilder attribute yourself,
    @ViewBuilder var spells3: some View {
        Text("Lumos")
        Text("Obliviate")
    }

    @State private var useRedText = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("Hello, world!")
            {
                print(type(of: self.body))
                useRedText.toggle()
            }
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
            .foregroundStyle(useRedText ? .green : .blue) //Conditional modifiers
        }
        .padding()
        
        VStack {
            Text("Gryffindor")
                .font(.largeTitle)
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
            spells3
        }
        .font(.title)
        
        VStack (spacing: 10){
//            CapsuleText(text: "First")
//                .foregroundStyle(.white)
//            CapsuleText(text: "Second")
//                .foregroundStyle(.yellow)
//            Text("Hello World")
//                .titleStyle()
            
            Color.blue
                .frame(width: 200, height: 100)
                .watermarked(with: "Hacking with Swift")


        }
        // Environment modifier:  if any of those child views override the same modifier, the child’s version takes priority.
        //font() is an environment modifier, which means the Gryffindor text view can override it with a custom font.
        //blur() is a regular modifier, so any blurs applied to child views are added to the VStack blur rather than replacing it.
        
    }
}

#Preview {
    ContentView()
}

// SwiftUI use structs for views
// 1. structs are simpler and faster than classes.
// 2. It forces us to think about isolating state in a clean way. our views become simple, inert things that convert data into UI, rather than intelligent things that can grow out of control.
// 3.there is nothing behind our view.
// 4.modifier order matters: ModifiedContent types stacking up – each one takes a view to transform plus the actual change to make, rather than modifying the view directly.
//ModifiedContent<ModifiedContent<Button<Text>, _BackgroundStyleModifier<Color>>, _FrameLayout>
//SwiftUI renders your view after every single modifier.
//If you then later expand the frame, it won’t magically redraw the background – that was already applied.


//opaque return types
//A function or method that returns an opaque type hides its return value’s type information. Instead of providing a concrete type as the function’s return type, the return value is described in terms of the protocols it supports. Opaque types preserve type identity — the compiler has access to the type information, but clients of the module don’t.


//some View ： his means “one object that conforms to the View protocol, but we don’t want to say what.” Returning some View means even though we don’t know what view type is going back, the compiler does.
//1. some View is important for performance: SwiftUI needs to be able to look at the views we are showing and understand how they change, so it can correctly update the user interface. If SwiftUI didn’t have this extra information, it would be really slow for SwiftUI to figure out exactly what changed – it would pretty much need to ditch everything and start again after every small change.
// 2. SwiftUI builds up its data using ModifiedContent. The View protocol has an associated type attached to it- we need to say exactly what kind of view it is. exact combination of ModifiedContent structs to use, it’s hideously painful
//3.  SwiftUI silently creates a TupleView to contain those two views – a special type of view that holds exactly two views inside it

