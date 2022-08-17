let name = "twostraws"
let password = "iampassword"

let authentication = (name: "twostraws", password:"iampassword", ipAddress: "127.0.0.1")

switch authentication {
case ("bilbo", "iampassword",_):
    print("Hello, Bilbo")

case ("twostraws", "iampassword", let ip):
    print("Hello, twostraws ! your ip adress is \(ip)")
    
default: 
    print("Authentication fails !")  
}