//An enum is a set of named values we can create and use to make our code more efficient and safer. For example, we could make an enum of weekdays like this:
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