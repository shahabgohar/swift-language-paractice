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

// any class,enums or structs conforming to protocol

// property can be get
// property can be set
protocol SomeProtocol {
    var mustbesttable: Int { get set }
    var doesnotneedtobesettable: Int { get }
}

// prefix type propery requirements with the static keyword
// This rule pertains even though type property requirements 
// can be prefixed with the class or static keyword when implemented by a class
protocol AnotherProtocol {
    static var fullName: String { get }
}

protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String;
}

let person = Person(fullName: "Shahab")
print("person full name is: ", person.fullName)

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }

    // computed read only property
    var fullName: String {
        // used forced unwrapping ! to unwrap the optional
        return (self.prefix != nil ? self.prefix! + " " : "") + self.name
    }
    
}

var starship = Starship(name: "Shahab", prefix: "Mr.")
print(starship.fullName)

// protocols can also requires instance methods and type methods

// protocols can be mutating
// required when the protocol method has to mutate the instance itself that it belongs to

protocol ToggleAble {
    mutating func toggle()
}

enum OnOffSwitch: ToggleAble {
    case off, on

    mutating func toggle() {
        switch self {
            case .off:
                self = .on
            case .on: 
                self = .off
        }
    }
}

var lightSwitch = OnOffSwitch.off
print(lightSwitch)
lightSwitch.toggle()
print(lightSwitch)

// protocols can also define the initializer that must be implemented by conforming types

protocol InitProtocol {
    init(someParameters: Int)
}

class SomeClass: InitProtocol {
    required init(someParameters: Int) {
    // some initialization
    }
}

// associated types  whose type has to be determined later

protocol Container {
    associatedtype Item
    // 1. it must be possible to add a new item
    mutating func append(_ item: Item)
    // 2. it must be possible to get count of total items
    var count: Int { get }
    // 3. it must be possible to retreive each item in container using subscript 
    //  (get it by index) such as [1]
    subscript(i: Int) -> Item { get }
}

struct IntStack: Container {
    var items: [Int] = []

    mutating func append(_ item: Item) {
        self.items.append(item)
    }

    // conformace to first
    typealias Item = Int

    var count: Int {
        return self.items.count
    }

    
    subscript(i: Int) -> Int {
        return item[i]
    }
}