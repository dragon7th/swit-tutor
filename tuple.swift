// Tuples are a way to group multiple values into a single compound value. Unlike arrays, 
// the values in a tuple can be of different types, 
// and tuples have a fixed number of

/*
Group Multiple Values: 
Tuples allow you to combine two or more values into a single entity.
Different Types: The values within a tuple can be of different types (e.g., (Int, String, Bool)).
Fixed Size: 
Once a tuple is created, its number of elements is fixed. You can't add or remove elements.
Lightweight: 
Tuples are lightweight and efficient for simple data grouping.
Value Type: 
Tuples are value types, meaning that when a tuple is assigned to 
a new variable or passed to a function, a copy of the tuple is created.
*/

// Basic Tuple Creation:
let myTuple = (1, "Hello", true) // (Int, String, Bool)
// Named Tuple Elements:
let person = (name: "Alice", age: 30, city: "New York")
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

// another explanation of tuple

/*
Introduction
Tuples are used to combine multiple values into a single compound value where each 
of the values may have a different type. The compound value has a type that is 
the combination of the individual values' types. Like arrays, tuples are ordered collections. 
However, contrary to arrays, tuples are fixed in size, thereby to change the number of elements in a tuple, 
a new tuple must be created.
*/

//To create a tuple, you enclose the values in parentheses, separated by commas:

let order = ("biscuits", 2.99, 3)
//You can also specify the type of each value in the tuple:

let order: (String, Double, Int) = ("biscuits", 2.99, 3)
//To extract the individual values from a tuple, you can use the .n syntax, 
//where n is the index 
//of the element you would like to access, starting with 0:

let orderItem = order.0
// Returns "biscuits"

let orderQuantity = order.2
// Returns 3
//Named tuples
//Tuples can be named by providing labels for each of the values:

let order = (item: "biscuits", price: 2.99, quantity: 3)
//This can be useful for making the tuple more readable and self-explanatory, 
//especially when the tuple is used as a return value from a function.

//It also allows you to access the individual values by their names:

let orderItem = order.item
// Returns "biscuits"
let orderQuantity = order.quantity
// Returns 3
//As with non-named tuples, you can specify the type of each value in a named tuple:

let order: (item: String, price: Double, quantity: Int) = (item: "biscuits", price: 2.99, quantity: 3)
//Modifying tuples
//Elements of a tuple can be modified, it can be done using the .n syntax.

var order = ("biscuits", 2.99, 3)
order.0 = "cookies"
order.1 = 1.99
order.2 = 5

order
// Returns ("cookies", 1.99, 5)

//Multiple return values
//Functions in Swift can only return a single value. However, since a tuple is a single value, 
//you can package multiple values into a tuple and return that tuple from a function. 
//This allows you to effectively return multiple values from a function.

//Here is an example of a function that returns a tuple with a quotient and a remainder:

func divide(_ dividend: Int, by divisor: Int) -> (quotient: Int, remainder: Int) {
  let quotient = dividend / divisor
  let remainder = dividend % divisor
  return (quotient, remainder)
}
//Tuple decomposition
//You can decompose a tuple into its individual components by providing a number of 
//variables equal to the number of elements in the tuple. Using tuple decomposition 
//can increase the readability of your code, since it allows you 
//to assign meaningful names to the individual values.

let order = ("biscuits", 2.99, 3)
let (item, price, quantity) = order

item
// Returns "biscuits"
Decomposition can also be done with for-in loops:

let orders = [("biscuits", 2.99, 3), ("cookies", 1.99, 5)]

for (item, price, quantity) in orders {
  print("Item: \(item), Price: \(price), Quantity: \(quantity)")
}
