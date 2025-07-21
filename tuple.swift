// Tuples are a way to group multiple values into a single compound value. Unlike arrays, the values in a tuple can be of different types, 
// and tuples have a fixed number of
/*
Group Multiple Values: Tuples allow you to combine two or more values into a single entity.
Different Types: The values within a tuple can be of different types (e.g., (Int, String, Bool)).
Fixed Size: Once a tuple is created, its number of elements is fixed. You can't add or remove elements.
Lightweight: Tuples are lightweight and efficient for simple data grouping.
Value Type: Tuples are value types, meaning that when a tuple is assigned to 
a new variable or passed to a function, a copy of the tuple is created.
*/

// Basic Tuple Creation:
let myTuple = (1, "Hello", true) // (Int, String, Bool)
// Named Tuple Elements:
let person = (name: "Alice", age: 30, city: "New York") // (name: String, age: Int, city: String)
// Tuple with Type Annotations (Optional, but good for clarity):
let point: (x: Double, y: Double) = (x: 3.14, y: 2.71)

// Accessing Tuple Elements:

// Using Index Numbers:
let myTuple = (1, "Hello", true)
let number = myTuple.0     // number is 1 (Int)
let message = myTuple.1    // message is "Hello" (String)
let flag = myTuple.2       // flag is true (Bool)

// Using Named Elements:
let person = (name: "Alice", age: 30, city: "New York")
let personName = person.name   // personName is "Alice" (String)
let personAge = person.age     // personAge is 30 (Int)
let personCity = person.city    // personCity is "New York" (String)

// Decomposition:
let myTuple = (1, "Hello", true)
let (number, message, flag) = myTuple
print(number)   // Prints 1
print(message)  // Prints Hello
print(flag)     // Prints true

// You can also use decomposition with named elements:
let person = (name: "Alice", age: 30, city: "New York")
let (personName, personAge, personCity) = (person.name, person.age, person.city)
print(personName) // Prints "Alice"

//Use _ to ignore elements you don't need
let (myName, _, myCity) = (person.name, person.age, person.city)
print(myName) // Prints "Alice"
print(myCity) // Prints "New York"

// More concisely:
let (myName2, _, myCity2) = person
print(myName2) // Prints "Alice"
print(myCity2) // Prints "New York"

// Tuples as Return Values:
func getPersonInfo() -> (name: String, age: Int, city: String) {
    return (name: "Bob", age: 40, city: "London")
}

let personInfo = getPersonInfo()
print(personInfo.name) // Prints Bob
print(personInfo.age)  // Prints 40
print(personInfo.city) // Prints London

//With decomposition
let (name, age, city) = getPersonInfo()
print(name) // Prints Bob
print(age)  // Prints 40
print(city) // Prints London

// Comparing Tuples:
let tuple1 = (1, "a")
let tuple2 = (1, "a")
let tuple3 = (2, "b")

print(tuple1 == tuple2) // Prints true
print(tuple1 == tuple3) // Prints false

// Mutability of Tuples
var tuple1 = (1, 2)
var tuple2 = tuple1 // tuple2 gets a *copy* of tuple1

tuple2.0 = 3 // This changes tuple2, but not tuple1

print(tuple1) // Prints (1, 2)
print(tuple2) // Prints (3, 2)