let name: String? = "twostars"
let password:String? = "iampassword"


switch (name, password) {
case let(name?, password?):
    print("the name is \(name) with password \(password)")

case let(name?, nil):
    print("there is no password provided \(name)")

default: 
    print("who are you ?")

}
