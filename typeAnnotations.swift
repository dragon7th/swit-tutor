//You can try to force a specific type for a new variable or constant by using type annotation like this:
var score: Double = 0

//Without the : Double part Swift would infer that to be an Int, but we’re overriding that and saying it’s a Double.

let player: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: Array<String> = ["Red", "Fearless"]
var user: Dictionary<String, String> = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])