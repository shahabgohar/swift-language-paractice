let age = 36


switch age {
case 0..<18:
    print("You have the energy and time, but not the money")
case 18..<70:
    print("You have the energy and money, but not the time")
default:
    print("You have the time and money, but not the energy")
}

// another similar approach

if case 0..<18 = age {
    print("You have the energy and time, but not the money")
}else if case 18..<70 = age {
    print("You have the energy and money, but not the time")
}else {
    print("You have the time and money, but not the energy")
}

// an approved approached

if  0..<18 ~= age {
    print("You have the energy and time, but not the money")
}else if  18..<70 ~= age {
    print("You have the energy and money, but not the time")
}else {
    print("You have the time and money, but not the energy")
}


// a clever approach with range methods 


if  (0..<18).contains(age) {
    print("You have the energy and time, but not the money")
}else if  (18..<70).contains(age) {
    print("You have the energy and money, but not the time")
}else {
    print("You have the time and money, but not the energy")
}
