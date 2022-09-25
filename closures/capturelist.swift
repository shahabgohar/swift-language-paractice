// var number = 0

// let increment = {
//     number += 1
//     print(number)
// }

// increment()

// increment()

// final class Increment {
//     var number = 0

//     func incrementNumber() {
//         self.number += 1
//         print(self.number)
//     }
// }

// let increment = Increment()

// increment.incrementNumber()

final class Increment {
    var number = 0

    // lazy var incrementNumber = { [unowned self] (number: Int) in 
    //     self.number += number
    //     print(self.number)
    // }

    lazy var incrementNumber = { [weak self] (number: Int) in 
    print(self)
    guard let strongself = self else {
        print("i am disappeared")
        return
    }
        // strongself.number += number
        // print(strongself.number)
        // return strongself.number
    }

    //     func incrementNumber(val: Int) {
    //     self.number += val
    //     print(self.number)
    // }

    
    deinit {
        print(#function)
    }
    
}

do {
// let increment = Increment()
// increment.incrementNumber(3)
let increment = Increment().incrementNumber(3)
}