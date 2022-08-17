let twoStraws = (name: "shahab", password: "iampassword")
let bilbo = (name: "bilbo", password: "bagg1n5")
let taylor = (name: "taylor", password: "fr0st1es")

let users = [twoStraws, bilbo, taylor]

for case let(name,"fr0st1es" ) in users {
    print("user found with the name \(name))")
}