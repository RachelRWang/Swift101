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

var day = Weekday.monday
day = Weekday.friday
day = .tuesday

//MARK: if let Optionals

var name2: String? = nil

//Optional strings might contain a string like “Hello” or they might be nil – nothing at all.
if let unwrapped = name2
{
    print("\(unwrapped.count)")
}
else
{
    print("Missing name.")
}

//MARK: guard let Optionals
//This will accept an optional string as its only parameter and try to unwrap it, but if there’s nothing inside it will print a message and exit. Because optionals unwrapped using guard let stay around after the guard finishes, we can print the unwrapped string at the end of the function:
func greet(_ name: String?) {
    guard let unwrapped = name else {
        //if nil find return immediately
        print("You didn't provide a name!")
        return
    }

    // optionals unwrapped using guard let stay around after the guard finishes
    print("Hello, \(unwrapped)!")
}

//MARK: force unwrapping
//Optionals represent data that may or may not be there, but sometimes you know for sure that a value isn’t nil. In these cases, Swift lets you force unwrap the optional: convert it from an optional type to a non-optional type.
//you should force unwrap only when you’re sure it’s safe – there’s a reason it’s often called the crash operator.
let str3 = "5"
//Swift will immediately unwrap the optional and make num a regular Int rather than an Int?. But if you’re wrong – if str was something that couldn’t be converted to an integer – your code will crash.
let num3 = Int(str3)!

//That makes num an optional Int because you might have tried to convert a string like “Fish” rather than “5”.
//let num3 = Int(str)

//MARK: implicitly unwrapped optionals
//Like regular optionals, implicitly unwrapped optionals might contain a value or they might be nil. However, unlike regular optionals you don’t need to unwrap them in order to use them: you can use them as if they weren’t optional at all.
//Because they behave as if they were already unwrapped, you don’t need if let or guard let to use implicitly unwrapped optionals. However, if you try to use them and they have no value – if they are nil – your code crashes.

//Implicitly unwrapped optionals exist because sometimes a variable will start life as nil, but will always have a value before you need to use it. Because you know they will have a value by the time you need them, it’s helpful not having to write if let all the time.
let age2: Int! = nil

//MARK: Nil coalescing
//The nil coalescing operator unwraps an optional and returns the value inside if there is one. If there isn’t a value – if the optional was nil – then a default value is used instead. Either way, the result won’t be optional: it will either be the value from inside the optional or the default value used as a backup.
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

//MARK: Optional chaining
//Swift provides us with a shortcut when using optionals: if you want to access something like a.b.c and b is optional, you can write a question mark after it to enable optional chaining: a.b?.c.
//When that code is run, Swift will check whether b has a value, and if it’s nil the rest of the line will be ignored – Swift will return nil immediately. But if it has a value, it will be unwrapped and execution will continue.
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

//MARK: optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//The first is try?, and changes throwing functions into functions that return an optional. If the function throws an error you’ll be sent nil as the result, otherwise you’ll get the return value wrapped as an optional.
if let result = try? checkPassword("password2") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

//The other alternative is try!, which you can use when you know for sure that the function will not fail. If the function does throw an error, your code will crash.
try! checkPassword("sekrit")
print("OK!")

//MARK: failable initializer
//This is a failable initializer: an initializer that might work or might not. You can write these in your own structs and classes by using init?() rather than init(), and return nil if something goes wrong. The return value will then be an optional of your type, for you to unwrap however you want.
struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

//MARK: typecasting

//https://www.hackingwithswift.com/sixty/10/11/optionals-summary
