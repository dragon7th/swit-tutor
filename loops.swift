//Swift’s for loops run some code for every item in a collection, 
or in a custom range. For example:
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os).")
}

//You can also loop over a range of numbers:
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

//1...12 contains the values 1 through 12 inclusive. If you want to 
exclude the final number, use ..< instead:
for i in 1..<13 {
    print("5 x \(i) is \(5 * i)")
}

//Tip: If you don’t need the loop variable, use _:
var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

//You can also iterate over a range of numbers using a for-in loop. 
//This allows you to execute a block of code a specific number of times, 
//for example, the range 1...5 will iterate over the numbers 1, 2, 3, 4, and 5, 
//so the loop will execute 5 times. Sometimes you might want to iterate over indexes, 
//in a data-structure like an array, then you can use a 0..<array.count range.

let numbers = [3, 10, 7, 11]

for i in 0..<numbers.count {
  print(numbers[i])
}

/*
Iterating over a string
You can also iterate over a string using a for-in loop. 
This allows you to iterate over each character in the string, 
and note specifically that the type given in the loop is a Character.
*/

let message = "Hello!"

for character in message {
  print(character)
}

// prints:
// H
// e
// l
// l
// o
// !

//stride
/*
Swift also provides a stride function that allows you to create a 
sequence over a range with a specific step. Which can be then 
iterated over using a for-in loop. stride is defined as 
stride(from:to:by:) notes: to parameter is exclusive, so the loop will iterate 
until the number before the to
stride(from:through:by:), notes: through parameter is inclusive, 
so in this case it would also include the 10
the first one is exclusive and the second one is inclusive.
*/

for i in stride(from: 0, to: 10, by: 2) {
  print(i)
}

// prints:
// 0
// 2
// 4
// 6
// 8

//There are also while loops, which execute their loop body 
until a condition is false, like this:
var count = 10

while count > 0 {
    print("\(count)…")
    count -= 1
}

print("Go!")

//You can use continue to skip the current loop iteration 
and proceed to the following one:
let files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(file)")
}

//Alternatively, use break to exit a loop and skip all remaining iterations.



