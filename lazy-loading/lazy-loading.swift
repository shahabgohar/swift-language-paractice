class Singer {
    let name: String

    // the code will be executed once when needed
    lazy var reversedName = self.getReversedName()
    
    init(name: String) {
        self.name = name
    }

    private func getReversedName() -> String {
        return "\(name.uppercased()) backward is \(String(name.uppercased().reversed()))"
    }
    
}

let taylor = Singer(name: "taylor swift")
print(taylor.reversedName)