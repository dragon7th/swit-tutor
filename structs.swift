//Structs let us create our own custom data types, complete with their own properties and methods:
struct Album {
    let title: String
    let artist: String
    var isReleased = true

    func printSummary() {
        print("\(title) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()

//When we create instances of structs we do so using an initializer – Swift lets us treat our struct like a function, passing in parameters for each of its properties. It silently generates this memberwise initializer based on the struct’s properties.

//If you want to have a struct’s method change one of its properties, mark it as mutating:
mutating func removeFromSale() {
    isReleased = false
}

//A computed property calculates its value every time it’s accessed. For example, we could write an Employee struct that tracks how many days of vacation remained for that employee:
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}

//To be able to write to vacationRemaining we need to provide both a getter and a setter:
var vacationRemaining: Int {
    get {
        vacationAllocated - vacationTaken
    }

    set {
        vacationAllocated = vacationTaken + newValue
    }
}

//newValue is provided by Swift, and stores whatever value the user was assigning to the property.

//Property observers are pieces of code that run when properties change: didSet runs when the property just changed, and willSet runs before the property changed.

//We could demonstrate didSet by making a Game struct print a message when the score changes:
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3

//Initializers are special functions that prepare a new struct instance to be used, ensuring all properties have an initial value.

//Swift generates one based on the struct’s properties, but you can create your own:
struct Player {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

//Important: Initializers don’t have func before them, and don’t explicitly return a value.

//Swift has several options for access control inside structs, but four are the most common:
/* Use private for “don’t let anything outside the struct use this.”
Use private(set) for “anything outside the struct can read this, but don’t let them change it.”
Use fileprivate for “don’t let anything outside the current file use this.”
Use public for “let anyone, anywhere use this.” */

struct BankAccount {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

//Because we used private(set), reading funds from outside the struct is fine but writing isn’t possible.

//Swift supports static properties and methods, allowing you to add a property or method directly to the struct itself rather than to one instance of the struct:
struct AppData {
    static let version = "1.3 beta 2"
    static let settings = "settings.json"
}

//Using this approach, everywhere we need to check or display something like the app’s version number we can read AppData.version.



