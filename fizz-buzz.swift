func fizzbuzz(number:Int) -> String {
    switch (number % 3 == 0 ,number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case(false, true):
        return "Buzz"
    case(true, true):
        return "FizzBuzz"
    case(false,false):
        return String(number)
    }
}

print(fizzbuzz(number: 15))
