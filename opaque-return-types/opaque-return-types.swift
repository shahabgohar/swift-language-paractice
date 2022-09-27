
protocol MobileOS {
    associatedtype Version
    var version: Version { get }
    init(version:Version)
}

// implementing concrete types of protocols

struct IOS: MobileOS {
    var version: Float
}

struct Android: MobileOS {
    var version: String
}

// create function to return the protocol

// that solution will give the error

// func buildPreferredOS() -> MobileOS {
//     return IOS(version: 13.1)
// }

// another solution would be
// Buils Success !!
// but the api is leaking the concrete type
// func buildPreferredOS() -> IOS {
//     return IOS(version: 13.1)
// }

// Solution 3 use Generics !!!!!
// but you have to tell the concrete type in the end
func buildPreferredOS<T: MobileOS>(version: T.Version) -> T {
    return T(version: version)
}

let android: Android = buildPreferredOS(version: "jelly bean")
let ios: IOS = buildPreferredOS(version: 15)

// final solution opaque return types
// we can return the protocol but the compiler will hide the true identity of its 
// implementaion
// but the can return only one type but with different values

func finalPreferredOS() -> some MobileOS {
    let isEven = Int.random(in: 0...100) % 2 == 0
   return isEven ? IOS(version: 13.1) : IOS(version: 13.0)
}


// another example

// simplify nested and complex types into opaque return types

func sliceFirstAndEndSquenceProtocol<T: Numeric>(array: Array<T>) -> LazyMapSequence<ArraySlice<T>, T> {
    return array.dropFirst().dropLast().lazy.map{ $0 * $0 }
}

sliceFirstAndEndSquenceProtocol(array: [2,3,4,5]).forEach { print($0) }  

func sliceFirstAndEndSquenceProtocols<T: Numeric>(array: Array<T>) -> some Sequence {
    return array.dropFirst().dropLast().lazy.map{ $0 * $0 }
}

sliceFirstAndEndSquenceProtocols(array: [2,3,4,5]).forEach { print($0) }  
