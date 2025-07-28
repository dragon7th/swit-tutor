//Classes let us create custom data types, and are different from structs in five ways.
//The first difference is that we can create classes by inheriting functionality from other classes:
class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm coding for \(hours) hours.")
    }
}

let novall = Developer(hours: 8)
novall.work()
novall.printSummary()

//If a child class wants to change a method from a parent class, it must use override:
class Developer: Employee {
    func work() {
        print("I'm coding for \(hours) hours.")
    }
    override func printSummary() {
    print("I've spent so much time with ai from Goose fo like \(hours)")
}
}

//The second difference is that initializers are more tricky with classes. 
//There’s a lot of complexity here, but there are three key points:

/* 
1. Swift won’t generate a memberwise initializer for classes.
2. If a child class has custom initializers, it must always call the parent’s 
initializer after it has finished setting up its own properties.
3. If a subclass doesn’t have any initializers, it automatically inherits the 
initializers of its parent class.
*/
class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let myCar = Car(isElectric: true, isConvertible: false)

print("Is my car electric? \(myCar.isElectric)")
print("Is my car convertible? \(myCar.isConvertible)")
// super allows us to call up to methods that belong to our parent class, 
// such as its initializer.

// The third difference is that all copies of a class instance share their data, 
// meaning that changes you make to one will automatically change other copies.
class Singer {
    var name = "Adele"
}

var singer1 = Singer()
var singer2 = singer1
singer2.name = "Justin"
print(singer1.name)  
print(singer2.name)

//That will print “Justin” for both – even though we only changed one of them, 
//the other also changed. In comparison, struct copies don’t share their data.
//The fourth difference is that classes can have a deinitializer that gets called 
//when the last reference to an object is destroyed.
//So, we could create a class that prints a message when it’s created and destroyed:
class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}

//The final difference is that classes let us change variable properties 
//even when the class itself is constant:
class User {
    var name = "Paul"
}

let user = User()
user.name = "Taylor"
print(user.name)

//As a result of this, classes don’t need the mutating keyword with methods that change their data.
