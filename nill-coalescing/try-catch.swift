enum MyError: Error {
    case runtimeError(String)
}

func somethingPerforming() throws {
    throw MyError.runtimeError("unknow error occured")
    
    print("hello i am performing something !!!!")
}

do {
    try somethingPerforming()
} catch MyError.runtimeError(let errorMessage) {
    print(errorMessage)
}
