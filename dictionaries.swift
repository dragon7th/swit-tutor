//Dictionaries store multiple values according to a key we specify. 
//For example, we could create a dictionary to store information about a person:
let employee = [
    "name": "Taylor",
    "job": "Singer"
]

//To read data from the dictionary, use the same keys you used when creating it:
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
//The default value will be used if the key we’ve asked for doesn’t exist.

//Arrays and dictionaries are so common that they have special syntax that is easier to write:
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]