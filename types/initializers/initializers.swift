let heading = "This is heading"
let underline = String(repeating: "=", count: heading.count)

print(underline)

let equalsArray = [String](repeating: "=", count: heading.count)

print(equalsArray)

var board = [[String]](repeating: [String](repeating: "=", count: heading.count), count: 10)

print(board)
