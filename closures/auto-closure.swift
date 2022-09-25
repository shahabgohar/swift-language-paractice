// no need to pass the closure 
//  code written will become the closure

//  closures are non-escaping by default

var funcsTobeExecutedLater: [() -> Void] = []

func appendFuncs(_ closure: @escaping @autoclosure () -> Void) {
    funcsTobeExecutedLater.append(closure)
}

func executePendingClosures() {
    for closure in funcsTobeExecutedLater {
        closure()
    }
}

appendFuncs(print("yo yo"))
appendFuncs(print("yo yo yo yo"))
appendFuncs(print("yo yo yo yo yo yo"))

executePendingClosures()