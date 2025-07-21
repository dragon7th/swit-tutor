//Sets are similar to arrays, except you can’t add duplicate items, 
//and they don’t store items in a particular order.
var numbers = Set([1, 1, 3, 5, 7])
print(numbers)

//Remember, the set will ignore duplicate values, and it won’t 
//remember the order used in the array.
//Adding items to a set is done by calling its insert() method, like this:
numbers.insert(10)

//Sets have one big advantage over arrays: using contains() on a set is 
//effectively instant no matter how many items the set contains – even 
//a set with 10,000,000 items will respond instantly.

// Creating Sets:

// Using Type Annotation and Initialization:
var mySet: Set<String> = Set() // Empty set of strings
var myIntSet: Set<Int> = [1, 2, 3] // Set of integers

// Using Type Inference:
var mySet: Set = ["apple", "banana", "cherry"] // Swift infers Set<String>
//or
var mySet = Set(["apple", "banana", "cherry"]) // Swift infers Set<String>

// From an Array:
let myArray = [1, 2, 2, 3, 4, 4, 5]
let mySet = Set(myArray) // {5, 2, 3, 4, 1} (duplicates are removed)

//   Basic Set Operations:

// insert(_:): Adds a new element to the set.
var mySet: Set<String> = ["apple", "banana"]
mySet.insert("cherry")  // mySet is now {"apple", "banana", "cherry"}
mySet.insert("apple")   // mySet remains {"apple", "banana", "cherry"} (no duplicate)

// remove(_:): Removes an element from the set. Returns the removed element if it was present, 
// otherwise nil.
var mySet: Set = ["apple", "banana", "cherry"]
let removedElement = mySet.remove("banana") // removedElement is "banana", mySet is {"apple", "cherry"}
let removedElement2 = mySet.remove("grape") // removedElement2 is nil, mySet remains {"apple", "cherry"}

// contains(_:): Checks if an element is present in the set.
var mySet: Set = ["apple", "banana", "cherry"]
let hasApple = mySet.contains("apple")   // hasApple is true
let hasGrape = mySet.contains("grape")   // hasGrape is false

// count: Returns the number of elements in the set.
var mySet: Set = ["apple", "banana", "cherry"]
let numberOfElements = mySet.count // numberOfElements is 3

// isEmpty: Checks if the set is empty.
var mySet: Set<Int> = []
let empty = mySet.isEmpty // empty is true

// Iterating Through a Set:
let mySet: Set = ["apple", "banana", "cherry"]
for fruit in mySet {
    print(fruit) // Prints "banana", "cherry", "apple" (order may vary)
}

//  Set Algebra (Common Set Operations):

// union(_:): Creates a new set containing all elements from both sets (A ∪ B).


let setA: Set = [1, 2, 3]
let setB: Set = [3, 4, 5]
let unionSet = setA.union(setB) // unionSet is {5, 2, 3, 4, 1}

// intersection(_:): Creates a new set containing only the elements 
// that are common to both sets (A ∩ B).
let setA: Set = [1, 2, 3]
let setB: Set = [3, 4, 5]
let intersectionSet = setA.intersection(setB) // intersectionSet is {3}

// subtracting(_:): Creates a new set containing elements from the first set 
// that are not in the second set (A - B).
let setA: Set = [1, 2, 3]
let setB: Set = [3, 4, 5]
let subtractingSet = setA.subtracting(setB) // subtractingSet is {2, 1}

// symmetricDifference(_:): Creates a new set containing elements that are in either set, 
// but not in both (A Δ B).
let setA: Set = [1, 2, 3]
let setB: Set = [3, 4, 5]
let symmetricDifferenceSet = setA.symmetricDifference(setB) // symmetricDifferenceSet is {5, 2, 4, 1}

//    Set Membership and Inclusion:

// isSubset(of:): Determines whether all of the values in a set are contained in the specified set.
let setA: Set = [1, 2]
let setB: Set = [1, 2, 3]
let isSubset = setA.isSubset(of: setB) // isSubset is true

// isSuperset(of:): Determines whether a set contains all of the values in the specified set.
let setA: Set = [1, 2, 3]
let setB: Set = [1, 2]
let isSuperset = setA.isSuperset(of: setB) // isSuperset is true

// isStrictSubset(of:): Determines whether a set is a subset of, but not equal to, the specified set.
    let setA: Set = [1, 2]
    let setB: Set = [1, 2, 3]
    let isStrictSubset = setA.isStrictSubset(of: setB) // isStrictSubset is true

// isStrictSuperset(of:): Determines whether a set is a superset of, 
// but not equal to, the specified set.
    let setA: Set = [1, 2, 3]
    let setB: Set = [1, 2]
    let isStrictSuperset = setA.isStrictSuperset(of: setB) // isStrictSuperset is true

// isDisjoint(with:): Determines whether two sets have no elements in common.
let setA: Set = [1, 2, 3]
let setB: Set = [4, 5, 6]
let isDisjoint = setA.isDisjoint(with: setB) // isDisjoint is true
