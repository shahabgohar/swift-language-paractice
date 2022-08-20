let data = ("one", "two", "three")

// if you want to create three  different constants out of those three values without destructuring

// let one = data.0
// let two = data.1
// let three = data.2

// print("without destructuring")

// print(one)
// print(two)
// print(three)

let (one, two, three) = data

print(one)
print(two)
print(three)

// tuples used in functions that are going to return multiple values

func getPerson() -> (String,Int) {
    return ("shahab", 24)
}

let (name, age) = getPerson()

print(name)
print(age)

// to ignore values during destructuring

let (_, personAge) = getPerson()

print(personAge)

// multiple assignments

let (cheif, passion) = ("chief", "passion")

print(cheif)
print(passion)

// swap values

var a = 10
var b = 20

print("a")
print(a)
print("b")
print(b)

(b,a) = (a,b)

print("swap done")
print("a")
print(a)
print("b")
print(b)
