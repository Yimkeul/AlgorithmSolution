let N = Int(readLine()!)!
    for _ in 0 ..< N {
        let line = readLine()!
        print(check(line) ? "yes" : "no")
    }

    func check(_ n: String) -> Bool {
        return n.count >= 6 && n.count < 10
    }