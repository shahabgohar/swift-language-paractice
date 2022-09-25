import Foundation

precedencegroup ExponentiationPrecedence {
    higherThan: MultiplicationPrecedence
    associativity: right
}

infix operator **: ExponentiationPrecedence

func **(lhs: Double, rhs: Double) -> Double {
    print("lhs ", lhs)
    print("rhs ", rhs)
    return pow(lhs, rhs)
}

let result = 2 ** 4 ** 3

print(result)