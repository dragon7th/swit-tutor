//An enum is a set of named values we can create and use to make our 
//code more efficient and safer. For example, we could make an enum of weekdays like this:
// an enum (short for enumeration) is a data type that allows you to define a group of related values. 
// It's a way to create a type that can only hold one of a specific set of options.
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

//We can now make instances of that enum, then assign other possible cases to it:
var day = Weekday.monday
day = .friday

//Values of an enum have the same type as the enum itself, so we could write this:
enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light

//Enums with Associated Values
//Associated values let you store extra information with each case of the enum.
enum Activity {
    case bored
    case running(speed: Double)
    case talking(topic: String)
    case singing(volume: Int)
}

let talkingAboutWeather = Activity.talking(topic: "the weather")
let runningFast = Activity.running(speed: 7.5) // meters per second

//Using Enums in a switch Statement
//Enums are often used with switch statements to handle different cases:
switch currentLight {
case .red:
    print("Stop")
case .yellow:
    print("Prepare to stop")
case .green:
    print("Go")
}

//Raw Values

//Enums can also have raw values, which are literal values of a specific type 
//(e.g., Int, String, Character). 
//All raw values within an enum must be of the same type.
enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
    case jupiter
    case saturn
    case uranus
    case neptune
}

//Methods and Computed Properties in Enums

//You can add methods and computed properties to enums, 
//just like you can with classes and structs.
enum Light {
    case on
    case off

    func toggle() -> Light {
        switch self {
        case .on:
            return .off
        case .off:
            return .on
        }
    }

    var description: String {
        switch self {
        case .on:
            return "The light is on"
        case .off:
            return "The light is off"
        }
    }
}

var myLight: Light = .off
myLight = myLight.toggle() // myLight is now .on
print(myLight.description) // prints "The light is on"


let earthOrder = Planet.earth.rawValue // earthOrder is 3
//If you don't provide raw values explicitly, Swift will automatically assign them, 
//starting from 0 for Int enums, or the case name itself for String enums.
