// closures is anonymous function

//You can assign functionality directly to a constant or variable like this:
let sayHello = {
    print("Hi there!")
}

sayHello()

//In that code, sayHello is a closure – a chunk of code we can pass around and call whenever we want. If you want the closure to accept parameters, they must be written inside the braces:
let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

/* The in is used to mark the end of the parameters and return type – everything after that is the body of the closure itself.

Closures are used extensively in Swift. For example, there’s an array method called filter() that runs all elements of the array through a test, and any that return true for the test get returned in a new array.

We can provide that test using a closure, so we could filter an array to include only names that begin with T: */
let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})
//Inside the closure we list the parameter filter() passes us, which is a string from the array. We also say that our closure returns a Boolean, then mark the start of the closure’s code by using in – after that, everything else is normal function code.

//Swift has a few tricks up its sleeve to make closures easier to read. Here’s some code that filters an array to include only names beginning with “T”:
let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})

print(onlyT)

//Immediately you can see that the body of the closure has just a single line of code, so we can remove return:
let onlyT = team.filter({ (name: String) -> Bool in
    name.hasPrefix("T")
})

//filter() must be given a function that accepts one item from its array, and returns true if it should be in the returned array.
//Because the function we pass in must behave like that, we don’t need to specify the types in our closure. So, we can rewrite the code to this:
let onlyT = team.filter({ name in
    name.hasPrefix("T")
})

//We can go further using special syntax called trailing closure syntax, which looks like this:
let onlyT = team.filter { name in
    name.hasPrefix("T")
}

//Finally, Swift can provide short parameter names for us so we don’t even write name in any more, and instead rely on a specially named value provided for us: $0:
let onlyT = team.filter {
    $0.hasPrefix("T")
}
