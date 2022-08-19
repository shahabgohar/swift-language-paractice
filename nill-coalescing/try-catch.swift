enum MyError: Error {
    case runtimeError(String)
}

func somethingPerforming() throws -> String {
    throw MyError.runtimeError("unknow error occured")
    print("hello i am performing something !!!!")
    return ""
}

let temp: Any = (try? somethingPerforming()) ?? "failed to execute"
print(temp)