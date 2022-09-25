let heading = "This is heading"
let underline = String(repeating: "=", count: heading.count)

print(underline)

let equalsArray = [String](repeating: "=", count: heading.count)

print(equalsArray)

var board = [[String]](repeating: [String](repeating: "=", count: heading.count), count: 10)

print(board)

let int1 = 20
let str1 = String(int1)

let str2 = "something"

let int2 = Int(str2) ?? 0

print(int2)
// true

// unique arrays
let scores = [1,2,2,4,5,2,3,4,3,3,7,7,8]
let scoresSet = Set(scores)
let uniqueScores = Array(scoresSet)

print(uniqueScores)

// dictionay capcities
let dictionay = Dictionary<String, String>(minimumCapacity: 100)

// raw values enum

enum Color:Int, CaseIterable {
    case unknown, blue, green, pink, purple, red
}

for color in Color.allCases {
    print(color.rawValue)
}

// output would be 
/**
0
1
2
3
4
5
**/

enum Planet: Int, CaseIterable {
 case mercury = 1
 case venus
 case earth
 case mars
 case unknown
}

for planet in Planet.allCases {
    print(planet.rawValue)
}
// output would be
/**
1
2
3
4
5
**/