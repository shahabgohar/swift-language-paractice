let name = "twostraws"
let password = "iampassword"

let authentication = (name: "twostraws", password:"iampassword")

switch authentication {
case ("bilbo", "iampassword"):
    print("Hello, Bilbo")

case ("twostraws", "iampassword"):
    print("Hello, twostraws !")
    
default: 
    print("Authentication fails !")  
}