// convenience let us know that these initializers can be inherited

// Let's take this example Base class:
// Notice we have three convenience initializers here. 
// That means we have three initializers that can be inherited. 
// And we have one designated initializer (a designated initializer is simply any initializer that's not a convenience initializer).
// We can instantiate instances of the base class in four different ways

class Base {
    let a: Int
    let b: Int

    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    convenience init() {
        self.init(a: 0, b: 0)
    }

    convenience init(a: Int) {
        // self.a = a
        // self.b = 0
        self.init(a: a, b: 0)
    }

    convenience init(b: Int) {
        self.init(a: 0,b: b)
    }
}

let base = Base(a: 0)

// So, let's create a subclass.
class NonInheritor: Base {

    // We added our own instance variable and we didn't give it a default value

    let c: Int

// so we must add our own initializers.
// it doesn't match the signature of the Base class's designated initializer
// so we are not inheriting the base class initializer

    init(a: Int, b:Int, c:Int) {
        self.c = c
        super.init(a: a, b: b)
    }
}

class Inheritor: Base {
    // We added our own instance variable and we didn't give it a default value
    var d: Int

// so we must add our own initializers.
// it doesn't match the signature of the Base class's designated initializer
// so we are not inheriting the base class initializer

    init(a: Int, b: Int, d: Int) {
        self.d = d
        super.init(a: a, b: b)
    }

// we went ahead and implemented an initializer that matched the designated initializer from Base

    convenience override init(a: Int, b:Int) {
        self.init(a:a, b: b, d: 0)
    }
}

// this does not have access to all the initializer of its parent class Base

let test = NonInheritor(a: 12, b: 14, c: 13)

// this does have the access to all the inhertied initializer of parent class Base

let anotherTest = Inheritor(a: 9)