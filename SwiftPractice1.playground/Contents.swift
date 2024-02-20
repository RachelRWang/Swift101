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
let age3: Int! = nil

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

//MARK: for loop

let platforms = ["ios", "macOS", "tvOS", "watchOS"]

for os in platforms
{
    print("Swift works great on \(os).")
}
//[1 12] include both sides
for i in 1...12
{
    print("The \(i) times table")
    
//    for j in 1...12 {
//        print("\(j) X \(i) is \(j*i)")
//    }
}

//[1, 5) exclude right side
for i in 1..<5
{
    print("Counting from 1 up to 5:\(i)")
}

//sometimes you don’t actually need the value that is currently being read, which is where the underscore comes in: Swift will recognize you don’t actually need the variable, and won’t make the temporary constant for you.

var lyric1 = "Haters goona"

for _ in 1...5
{
    lyric1 += " hate"
}

print(lyric1)

var countdown = 10

while countdown > 0
{
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

//MARK: functions
func printTimesTables(number: Int, end: Int) //parameters
{
    for i in 1...end
    {
        print("\(i) X \(number) is \(i*number)")
    }
}

printTimesTables(number: 5, end: 10) //arguments

func areLettersIdentical(string1: String, string2: String) -> Bool{
    return string1.sorted() == string2.sorted() //if only have 1 line of code we can remove return keyword string1.sorted() == string2.sorted()
}

let isSame = areLettersIdentical(string1: "abc", string2: "bca")

func sayHello(){
    return //exist the function immediatly
}

//MARK: tuples
//When you access values in a tuple, Swift does know ahead of time that it is available because the tuple says it will be available.
//tuples have a key advantage over dictionaries: we specify exactly which values will exist and what types they have, whereas dictionaries may or may not contain the values we’re asking for.
func getUser() -> (firstName: String, lastName: String)
{
    (firstName: "Tylor", lastName:"Tylor") //or ("Tylor", "Tylor")
}

let user1 = getUser()
print("Name:\(user1.firstName) \(user1.lastName)")

//destructuring, extract the tuple out
let(firstName, lastName) = getUser()
print("Name:\(firstName) \(lastName)")
//if you only need first name
let(firstName1, _) = getUser()
print("Name:\(firstName1)")

//MARK: function

func printHelp()
{
    let message = "Welcome to MyApp!"
    
    print(message);
}

printHelp()

func square(number: Int) -> Int
{
    return (number * number)
}

let result = square(number: 3)
print(result)

//Swift lets us provide two names for each parameter: one to be used externally when calling the function, and one to be used internally inside the function. This is as simple as writing two names, separated by a space.

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

func setAge(for person: String, to value: Int) {
    print("\(person) is now \(value)")
}

setAge(for: "Paul", to: 40)

//Omitting parameter labels

func greet(_ person: String)
{
    print("Hello, \(person)!")
}

greet ("Talor")

// Default parameters: You can give your own parameters a default value just by writing an = after its type followed by the default you want to give it.
func greet(_ person: String, nicely: Bool = true)
{
    if nicely == true {
        print("Hello, \(person)!")
    }
    else
    {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)

// Variadic functions:You can make any parameter variadic by writing ... after its type. So, an Int parameter is a single integer, whereas Int... is zero or more integers – potentially hundreds.

func square(numbers: Int...)
{
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)

//Throw error
//Swift lets us throw errors from functions by marking them as throws before their return type, then using the throw keyword when something goes wrong.

//This means using the throws keyword before the function’s return value, then using throw PasswordError.obvious if their password is “password”.

func checkPassword1(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

//Swift doesn’t like errors to happen when your program runs, which means it won’t let you run an error-throwing function by accident.
//If any errors are thrown inside the do block, execution immediately jumps to the catch block.
do {
    try checkPassword1("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//inout parameters
//All parameters passed into a Swift function are constants, so you can’t change them. If you want, you can pass in one or more parameters as inout, which means they can be changed inside your function, and those changes reflect in the original value outside the function.

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10;
//ampersand, &, before its name, which is an explicit recognition that you’re aware it is being used as inout.
doubleInPlace(number: &myNum)

// Day 6 Closures

let driving = {
    print("I'm driving in my car")
}

driving()

// accepting parameters in a clousure
//To make a closure accept parameters, list them inside parentheses just after the opening brace, then write in so that Swift knows the main body of the closure is starting.
let driving2 = { (place: String) in
    print ("I'm goting to \(place) in my car")
}

//One of the differences between functions and closures is that you don’t use parameter labels when running closures.
driving2("London")


let drivingWithReturn = { (place: String) -> String in
    return ("I'm goting to \(place) in my car")
}

// Closures as parameters
let drivingReturn = drivingWithReturn("London")
print (drivingReturn)

func travel(action:() -> Void)
{
    print("I'm getting ready to go.")
    action();
    print ("I arrived!")
}

travel(action:driving);

//trailing closure syntax
//If the last parameter to a function is a closure, Swift lets you use special syntax called trailing closure syntax. Rather than pass in your closure as a parameter, you pass it directly after the function inside braces.
travel {
    print("I'm driving in my car")
}

func travel2(action: (String) -> Void)
{
    print("I'm getting ready to go.")
    action( "London");
    print ("I arrived!")
}
travel2{ (place: String) in
    print ("I'm goting to \(place) in my car")
}

func travel3(action: (String) -> String){
    print("I'm getting ready to go.")
    let description = action("London");
    print (description)
    print ("I arrived!")
}
travel3 {(des: String) -> String in
    return "I'm going to \(des) in my car"
}

//shorthand parameter
travel3 { des in
    return "I'm going to \(des) in my car"
}

//Swift has a shorthand syntax that lets you go even shorter. Rather than writing place in we can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0.
travel3 {
    "I'm going to \($0) in my car"
}

func travel4(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel4 {
    "I'm going to \($0) at \($1) miles per hour"
}

travel4 {(des: String, distance: Int) -> String in
    "I'm going to \(des) at \(distance) miles per hour"
}

// returning closures from functions
func travel() -> (String) -> Void
{
    return {
        print ("I'm going to \($0)")
    }
}

let result1 = travel()

result1 ("London")

// Capturing values
//If you use any external values inside your closure, Swift captures them – stores them alongside the closure, so they can be modified even if they don’t exist any more.
func travel5() -> (String) -> Void
{
    var counter = 1;
    return {
        print ("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result2 = travel5()

result2("London")
result2("London")
result2("London")
result2("London")

//One of the most important features of Swift’s closures is that they capture values they use. At the same time, one of the most confusing features of Swift is that they capture values they use. Put simply, value capturing takes place so that your closure always has access to the data it needs to work, which means Swift can run the closure safely.


func makeRandomNumberGenerator() -> () -> Int {
//    If the variable had been destroyed, then our closure wouldn’t be able to work any more. It tries to read and write previousNumber, so Swift’s keeping it alive ensures the closure functions as intended.
//    Although the variable is used by the closure, it’s created outside the closure. This means it only gets set to 0 once, rather than every time the closure is run, which is why it now stores the previous value correctly.
//What you’re seeing here is the power of closure capturing: that previousNumber variable isn’t inside the closure, but because the closure requires it to exist in order to run it will be captured.
    var previousNumber = 0
    return {
        var newNumber: Int
        //That returns the closure we’re calling, which means every time we call generator() it creates a new previousNumber variable set to 0 – it isn’t storing the previous value at all.
        // var previousNumber = 0
        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        return newNumber
    }
}

let generator = makeRandomNumberGenerator()

for _ in 1...10 {
    print(generator())
}
