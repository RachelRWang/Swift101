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

// Swift use type inference to figure what data we are storing
// it's also possible to use type annotation to force a particular type
var soda: [String] = ["Coke", "Pepsi"]
var teams: [String] = [String]() //init empty string use type annoation as much as possible
var cities: [String] = [] // type inference
var clues = [String]()

//MARK: BOOL
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
var gameOver = false
gameOver.toggle()
print(gameOver)

let isMultuple = 120.isMultiple(of:3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// MARK: join string together
let firstPart = "Hellow, "
let secondPart = "word!"
let greeting1 = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
//A + B + C  = AB + ABC

// not efficeny by using +
//You see, each time Swift sees two strings being joined together using + it has to make a new string out of them before continuing, and if you have lots of things being joined it’s quite wasteful.
// 12 -> 123 -> 1234
let luggageCode = "1" + "2" + "3" + "4"

//MARK: string interpolation: and it lets us efficiently create strings from other strings, but also from integers, decimal numbers, and more.

let name1 = "Tylor"
let age1 = 26
let message = "Hello, my name is \(name1) and I'm \(age1) years old."
print(message)

print("5 x 5 is \(5 * 5)")

//MARK: Array
var beatles = ["John", "Paul", "George", "Ringo"]
print(beatles[0])
beatles.append("Adrian")
print(beatles.contains("Paul"))
print(beatles.sorted())
let reversedBeatles = beatles.reversed()
print(reversedBeatles)

var scores = Array<Int>()
scores.append(100)
scores.append(80)
print(scores[1])

var albums = ["Folklore"]
albums.append("Frearless")
print(albums.count)

var characters = ["Lana", "Pam", "Ray"]
print(characters.count)
characters.remove(at:2)
print(characters.count)
characters.removeAll()
print(characters.count)

//MARK: Dictionary
let employee = ["name": "Tyler Swift", "job": "Singer", "location": "Nashville"]
//we need to set default value if the key does not exist in the dictionary
print(employee["name", default:"Unknown"])
print(employee["job", default:"Unknown"])
print(employee["location", default:"Unknown"])

var heights = [String: Int]()
heights["Yao Mint"] = 229;
heights["LeBron James"] = 206
heights["LeBron James"] = 190 //updated with new value for the existing key

//MARK: Set
var actors = Set<String>()
actors.insert("Samuel L Jackson")
actors.insert("Samuel L Jackson") //auto-removed duplicate
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")
print(actors)
actors.contains("Nicolas Cage") //faster lookup than array
actors.sorted() //convert to a sorted array

//MARK: enums
enum Weekday
{
    case monday
    case tuesday
    case wednessday
    case thursday
    case friday
}

enum UIStyle
{
    case light, dark, system
}

var day = Weekday.monday
day = Weekday.friday
day = .tuesday

//swift can declare a constant varible and assign value to it later
// one golden rule: Swift must at all times know what data types your constants and variables contain. This is at the core of being a type-safe language, and stops us doing nonsense things like 5 + true or similar.
let username : String
//lots of complex logic
username = "twostarts"
//lots more complex logic
print(username)

//MARK: check condition T/F
var username1 = "tylorswift"
//if(username.count == 0) //inefficent
if(username1.isEmpty == true)
{
    username1 = "Anonymous"
}

print("Welcome, \(username)")

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.snow

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

//MARK: ternary conditonal operator
enum Theme {
    case light, dark
}
let theme = Theme.dark
let background = theme == .dark ? "black" : "white"
print(background)

//MARK: Optionals
//Swift’s solution is called optionals, and you can make optionals out of any type. An optional integer might have a number like 0 or 40, but it might have no value at all – it might literally be missing, which is nil in Swift.

var age2: Int? = nil
age = 38
print(age)

//unwrpping optionals
var name2: String? = nil

//unwrapping with gard


