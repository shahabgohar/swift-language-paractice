let greetPerson = {
    print("hello Homan")
}

greetPerson()

func passClosure(_ closure: () -> Void) {
    closure()
}

passClosure(greetPerson)

let closureWithParams = { (name: String) in 
print("Hello, \(name)")
}

closureWithParams("shahab")


func testCapture() -> () -> Void {
    var counter = 0

    return  {
        counter += 1
        print("counter \(counter)")
    }
}

let count = testCapture()

count()
count()
count()

let count2 = count

count2()
count2()
count2()
