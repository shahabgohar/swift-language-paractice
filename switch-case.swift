let name = "twostraws"
let password = "iampassword"

switch (name, password) {
case ("bilbo", "iampassword"):
    print("Hello, Bilbo")

case ("twostraws", "iampassword"):
    print("Hello, twostraws !")
    
default: 
    print("Authentication fails !")  
}