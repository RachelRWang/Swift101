import UIKit

//Swift is what’s known as a type-safe language, which means that every variable must be of one specific type.
var greeting = "Hello, playground"
greeting = "Goodbye"

// MARK: String
//Strings and integers are different types, and they can’t be mixed. So, while it’s safe to change str to “Goodbye”, I can’t make it 38 because that’s an Int not a String.

// MARK: Integer
var age = 38

//If you have large numbers, Swift lets you use underscores as thousands separators – they don’t change the number, but they do make it easier to read
var population = 8_000_000

/* Swift is a type-safe language*/
//When you create a variable Swift can figure out what type the variable is based on what kind of data you assign to it, and from then on that variable will always have that one specific type.
//But as your programs grow in size and complexity, it becomes impossible to keep the types of your variables in your head at all times, so we’re effectively shifting that work on to Swift instead.

// MARK: Multi-line String
var str1 = """
This goes
over multiple
lines
"""

var str2 = """
This goes \
over multiple \
lines
"""

var quote = "Change the world by being yourself"

// MARK: Double
//“Double” is short for “double-precision floating-point number”, and it’s a fancy way of saying it holds fractional values such as 38.1
// When creating a numeric variable, Swift decides whether to consider it an integer or a double based on whether you include a decimal point
// NOT allowed:var total = myInt + myDouble? it can’t be safe, which is why it isn’t allowed.
var pi = 3.141

// MARK: Boolean
var awesome = true

// MARK: String Interpolation
// string interpolation – the ability to place variables inside your strings to make them more useful.
//  Swift gives us string interpolation as a way of injecting custom data into strings at runtime: it replaces one or more parts of a string with data provided by us.
// Swift is capable of placing any kind of data inside string interpolation. The result might not always be useful, but for all of Swift’s basic types – strings, integers, Booleans, etc – the results are great.
var score = 85
var str = "Your score was \(score)"
var results = "The test results are here: \(str)"

// MARK: Constants
// "Let": you want to set a value once and never change it
//  It’s a form of safety: when you use constants you can no longer change something by accident.
// Xcode will warn you if you use var then don’t change the variable.
let tylor = "swift"

// MARK: type inference

//Swift assigns each variable and constant a type based on what value it’s given when it’s created. So, when you write code like this Swift can see it holds a string:That will make str a string, so you can’t try to assign it an integer or a boolean later on. This is called type inference: Swift is able to infer the type of something based on how you created it.

let test = "Hello, playground"


// MARK: type annoations
//If you want you can be explicit about the type of your data rather than relying on Swift’s type inference, like this:

//1.Swift can’t figure out what type should be used.
//2. You want Swift to use a different type from its default.
//3. You don’t want to assign a value just yet.
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

var percentage: Double = 99
var name: String
