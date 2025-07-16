//Swift’s strings start and end with double quotes:
let actor = "Tom Cruise"

//And they work great with emoji too:
let actor = "Tom Cruise 🏃‍♂️"

//If you want double quotes inside your string, place a backslash before them:
let quote = "He tapped a sign saying \"Believe\" and walked away."

//If you want a string that spans multiple lines, start and end with three double quotes,
let movie = """
A day in
the life of an
Apple engineer
"""

//Swift provides many useful properties and methods for strings, including .count to read how many letters it has:
print(actor.count)

//There are also hasPrefix() and hasSuffix(), which lets us know whether a string starts or ends with specific letters:
print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away."))

//Important: Strings are case-sensitive in Swift, so that second check will return false.

//You can create strings out of other data using string interpolation: write a backslash 
//inside your string, then place the name of a variable or constant inside parentheses, like this:
let name = "Taylor"
let age = 26
let message = "I'm \(name) and I'm \(age) years old."
print(message)

//Knowing the exact types of things is important for creating empty collections.
//For example, both of these create empty string arrays:
var teams: [String] = [String]()
var clues = [String]()

// Character is a data type that stores a single Unicode scalar value
// that is made up of one or more Unicode code points. A Unicode scalar value is any Unicode code point in the 
// range U+0000 to U+D7FF inclusive or U+E000 to U+10FFFF inclusive.
let aChar : Character = "A"


// Type inference
/*
Swift can infer the type of a string literal, 
and will by default infer it to be a String.
You can explicitly declare a string to be a Character by using the
Character type annotation, which requires the value to be a single character.
*/

let aString = "A"
let aChar: Character = "A"
print(type(of: aString)) // Prints String
print(type(of: aChar))   // Prints Character

// The following code will not compile
let badChar: Character = "Too many characters"
// Error: Cannot convert value of type 'String' to specified type 'Character'


// The append(_:) method mutates the string by adding either a string or a character to the end of it.
var greeting = "Hello"
let world = ", world"
let period: Character = "."

greeting.append(world)
print(greeting) // Prints "Hello, world"

greeting.append(period)
print(greeting) // Prints "Hello, world."

// Type conversion
// To convert a type to a string, you can use the String() 
// initializer, which accepts a variety of types, including Int, Double, Character, and more.
let charX: Character = "x"
print(String(charX))     // Prints "x"
print(String(110))       // Prints "110"
print(String(Double.pi)) // Prints "3.141592653589793"

// Special characters
/*
Value	Description
\0	Null character
\\	Backslash
\t	Horizontal tab
\n	Line feed
\r	Carriage return
\'	Single quote mark
\"	Double quote mark
\uFFFF	Hexadecimal unicode character
*/

let quote : String = "\"Hello\", he said."
print(quote) // Prints "Hello", he said.

let unicode : Character = "\u{1F496}"
print(unicode) // Prints 💖