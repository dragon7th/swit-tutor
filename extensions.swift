//Extensions let us add functionality to any type. For example, 
//Swift’s strings have a method for trimming whitespace and new lines, 
//but it’s quite long so we could turn it into an extension:
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmed()

//If you want to change a value directly rather than returning a new value, 
//mark your method as mutating like this:
extension String {
    mutating func trim() {
        self = self.trimmed()
    }
}

quote.trim()

//Extensions can also add computed properties to types, like this one:
extension String {
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

//The components(separatedBy:) method splits a string into an array of strings 
//using a boundary of our choosing, which in this case is new lines.
//We can now use that property with all strings:
let lyrics = """
But I keep cruising
Can't stop, won't stop moving
"""

print(lyrics.lines.count)

//Protocol extensions extend a whole protocol to add computed properties and method 
//implementations, so any types conforming to that protocol get them.
//For example, Array, Dictionary, and Set all conform to the Collection protocol, 
//so we can add a computed property to all three of them like this:
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

//Now we can put it to use:
let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

//This approach means we can list required methods in a protocol, then add default implementations of those inside a protocol extension. All conforming types then get to use those default implementations, or provide their own as needed.
