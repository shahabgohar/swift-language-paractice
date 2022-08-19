class Singer {
    let name: String

    // the code will be executed once when needed
    lazy var reversedName = {
        return "\(name.uppercased()) backward is \(String(name.uppercased().reversed()))"
    }()
    
    init(name: String) {
        self.name = name
    }

    
}

let taylor = Singer(name: "taylor swift")
print(taylor.reversedName)