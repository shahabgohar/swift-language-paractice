func giveAwards(name: String?) {
    guard let winner = name else{
        print("No way !")
        return
    }

    print("congratulations \(winner) !")
    
}

giveAwards(name: "shahab")

giveAwards(name: nil)