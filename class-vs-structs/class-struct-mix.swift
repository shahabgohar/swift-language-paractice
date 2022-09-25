struct Person {
    var name: String
    var age: Int
    var favoriteIcecream: String
}

let taylor = Person(name: "shahab", age: 25, favoriteIcecream: "choco bar")

final class PersonBox {
    var person: Person

    
    init(person: Person) {
        self.person = person
    }
    
}

let personBox = PersonBox(person: taylor)

final class TestContainer {
    var box: PersonBox

    
    init(box: PersonBox) {
        self.box = box
    }
    
}

let container1 = TestContainer(box: personBox)
let container2 = TestContainer(box: personBox)

print(container1.box.person.name)
print(container2.box.person.name)

container1.box.person.name = "not shahab"

print(container1.box.person.name)
print(container2.box.person.name)


struct PersonStruct {
 var name: String
 var age: Int
}
var taylor = PersonStruct(name: "Taylor Swift", age: 26)
taylor = PersonStruct(name: "shahab Swift", age: 26)
