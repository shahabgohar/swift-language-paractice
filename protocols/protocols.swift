protocol Payable {
    func calculateWages() -> Int
}

struct Surgeon: Payable {
    func calculateWages() -> Int {
    return 1000;
    }
}

let surgeon = Surgeon()
print(surgeon.calculateWages())