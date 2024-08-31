    let N = Int(readLine()!)!
    for _ in 0 ..< N {
        let line = readLine()!.split { $0 == " "}.map { Int($0)! }
        print(cal(line[0], line[1], line[2]))
    }
    
    func cal(_ a: Int, _ b: Int, _ x: Int) -> Int {
        return a * ( x - 1) + b
    }