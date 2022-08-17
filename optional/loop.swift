import Foundation

let data: [Any?] = ["Bill", nil, 69, "Ted"]

for case let .some(datum) in data {
    print(datum)
}

for case let datum? in data {
    print(datum)
}