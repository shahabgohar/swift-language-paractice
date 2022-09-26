// protocol Payable {
//     func calculateWages() -> Int
// }

// extension Payable {
//     func calculateWages() -> Int {
//         return 1000;
//     }
// }

// struct Surgeon: Payable {
//     // func calculateWages() -> Int {
//     // return 1000;
//     // }
// }

// let surgeon = Surgeon()
// print(surgeon.calculateWages())


protocol Payable {
    // func calculateWages() -> Int
}

extension Payable {
    func calculateWages() -> Int {
        return 1000;
    }
}
struct Surgeon {}
extension Surgeon: Payable {
    func calculateWages() -> Int {
    return 2000;
    }
}
let george: Surgeon = Surgeon()
print(george.calculateWages()) 
let surgeon: Payable = Surgeon()
print(surgeon.calculateWages())