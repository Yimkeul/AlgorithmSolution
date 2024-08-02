let T = Int(readLine()!)!
    for _ in 0 ..< T {
        let n = Int(readLine()!)!
        print(dpsum(n))
    }
    
    func dpsum(_ x: Int )-> Int {
        if x == 1 {
            return 1
        } else if x == 2 {
            return 2
        } else if x == 3 {
            return 4
        } else {
            return dpsum(x - 1) + dpsum(x - 2) + dpsum(x - 3)
        }
        
    }
