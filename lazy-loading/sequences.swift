func fibonacci(of num: Int) -> Int {
    if num < 2 {
        return num
    } else {
        return fibonacci(of: num - 1) + fibonacci(of: num - 2)
    }
}

// will perform calculation only when it is called/demand

let sequence = Array(0...20).lazy.map(fibonacci);
print(sequence[10])


// 10
// 9  8
// 8 6
// 7 