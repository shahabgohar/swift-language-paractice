for i in 1...100 {
    guard i % 8 == 0 else {continue}
    print(i)
}

for i in 1...100 where i % 8 == 0 {
    print(i)
}

