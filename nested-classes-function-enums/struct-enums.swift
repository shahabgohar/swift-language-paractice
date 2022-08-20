struct Cat {
    enum Breed:String {
        case britishShortHair, burmese, persian, ragdoll,
            russianBlue, scottishFold, siamese
    }
    var name:String
    var breed: Breed
    init(name: String, breed: Breed){
        self.name = name
        self.breed = breed
    }
}

let tomy = Cat(name: "Tommy", breed: Cat.Breed.persian)

print(tomy.name)
print(tomy.breed)

// in order to make enum privatized 
// it has a knockout effect of requiring that the suit property of card also be private
// otherwise it could be accessible in places where the suit enum was not


struct Deck {
    struct Card {
        private enum Suit {
            case hearts, diamonds, clubs, spades
        }

        var rank: Int
        private var suit: Suit

    }

    var cards = [Card]()
}
