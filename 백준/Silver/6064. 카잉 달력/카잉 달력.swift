    let T = Int(readLine()!)!
    
    for _ in 0..<T {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let (M, N, x, y) = (input[0], input[1], input[2], input[3])
        
        var year = x
        let maxYear = lcm(M, N)
        
        while year <= maxYear {
            if (year - y) % N == 0 {
                print(year)
                break
            }
            year += M
        }
        
        if year > maxYear {
            print(-1)
        }
    }
    
    func lcm(_ a: Int, _ b: Int) -> Int {
        return (a * b) / gcd(a, b)
    }

    func gcd(_ a: Int, _ b: Int) -> Int {
        return b == 0 ? a : gcd(b, a % b)
    }
