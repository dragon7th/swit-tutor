//Optionals represent the absence of data – for example, 
//they distinguish between an integer having the value 0, and having no value at all.
//To see optionals in action, think about this code:
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]

/* 
That attempts to read the value attached to the key “Peach”, which doesn’t exist, 
so this can’t be a regular string. Swift’s solution is called optionals, 
which means data that might be present or might not.

An optional string might have a string waiting inside for us, or there might be nothing at all 
– a special value called nil, that means “no value”. Any kind of data can be optional, 
including Int, Double, and Bool, as well as instances of enums, structs, and classes.

Swift won’t let us use optional data directly, because it might be empty. 
That means we need to unwrap the optional to use it – we need to look inside to see if there’s a value, 
and, if there is, take it out and use it.

Swift gives us several ways of unwrapping optionals, but the one you’ll see most looks like this: 
*/
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

//That reads the optional value from the dictionary, and if it has a string inside it gets 
//unwrapped – the string inside gets placed into the marioOpposite constant, and isn’t optional any more. 
//Because we were able to unwrap the optional, the condition is a success so the print() code is run.

//Swift has a second way of unwrapping optionals, called guard let, which is very similar to if let except it 
//flips things around: if let runs the code inside its braces if the optional had a value, 
//and guard let runs the code if the optional didn’t have a value.
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}
//If you use guard to check a function’s inputs are valid, Swift requires you to use return 
//if the check fails. However, if the optional you’re unwrapping has a value inside, 
//you can use it after the guard code finishes.
//Tip: You can use guard with any condition, including ones that don’t unwrap optionals.

//Swift has a third way of unwrapping optionals, called the nil coalescing operator – 
//it unwraps an optional and provides a default value if the optional was empty:
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

//The nil coalescing operator is useful in many places optionals are created. 
//For example, creating an integer from a string returns an optional Int? because the conversion 
//might have failed. Here we can use nil coalescing to provide a default value:
let input = ""
let number = Int(input) ?? 0
print(number)

//Optional chaining reads optionals inside optionals, like this:
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased()
print("Next in line: \(chosen ?? "No one")")
//Optional chaining is there on line 2: a question mark followed by more code. 
//It allows us to say “if the optional has a value inside, unwrap it then…” and add more code. 
//In our case we’re saying “if we got a random element from the array, uppercase it.”

//When calling a function that might throw errors, we can use try? to convert its result into an optional 
//containing a value on success, or nil otherwise.
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
//The getUser() function will always throw networkFailed, but we don’t care what was thrown – 
//all we care about is whether the call sent back a user or not.

