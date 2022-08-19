class MusicPlayer {
    init() {
        print("Ready to play songs")
        
    }
}

class Singer {
    // making it singelton 
    // becuase it is now related to the class not objects
    static let musicPlayer = MusicPlayer()
    init() {
        print("creating a new singer")
    }
}

let taylor = Singer()

Singer.musicPlayer

