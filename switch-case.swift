let name = "twostraws"
let password = "iampassword"

let authentication = (name: "twostraws", password:"iampassword", ipAddress: "127.0.0.1")

switch authentication {
case(_,_,_):
    print("you caould be anyone")
case ("bilbo", "iampassword",_):
    print("Hello, Bilbo")

case ("twostraws", "iampassword", _):
    print("Hello, twostraws !")
    
default: 
    print("Authentication fails !")  
}