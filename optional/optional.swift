let name: String? = "twostars"
let password:String? = "iampassword"


switch (name, password) {
case let(.some(name), .some(password)):
    print("the name is \(name) with password \(password)")

case let(.some(name), .none):
    print("there is no password provided \(name)")

default: 
    print("who are you ?")

}
