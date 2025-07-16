//To create a new function, write func followed by your function’s name, then add parameters inside parentheses:
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)
//We need to write number: 5 at the call site, because the parameter name is part of the function call.

//To return data from a function, tell Swift what type it is, then use the return keyword to send it back. For example, this returns a dice roll:
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

//If your function contains only a single line of code, you can remove the return keyword:
func rollDice() -> Int {
    Int.random(in: 1...6)
}

//Tuples store a fixed number of values of specific types, which is a convenient way to return multiple values from a function:
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

//If you don’t need all the values from the tuple you can destructure the tuple to pull it apart into individual values, then _ to tell Swift to ignore some:
let (firstName, _) = getUser()
print("Name: \(firstName)")

//If you don’t want to pass a parameter’s name when calling a function, place an underscore before it:
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

//An alternative is to write a second name before the first: one to use externally, and one internally:
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
//In that code for is used externally, and number is used internally.


//We can provide default parameter values by writing an equals after the type then providing a value, like this:
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)!")
    } else {
        print("Hi, \(person)!")
    }
}

//Now we can call greet() in two ways:
greet("Tim", formal: true)
greet("Taylor")

// _: The underscore _ is used to suppress the argument label when you call the function. 
// This means that when you call protectSecret,
// you don't need to write secret: before the string value. This makes the call more concise.

func createUser(name: String, withAddress address: String) {
    print("Creating user: \(name)")
    print("User address: \(address)")
    // ... other code to create the user ...
}

createUser(name: "Alice", withAddress: "123 Main St")
/*
name: String means you must use name: when calling the function, 
and inside the function, you refer to the user's name as name.
withAddress address: String means you must use withAddress: when calling the function, 
and inside the function, you refer to the user's address as address.
*/
