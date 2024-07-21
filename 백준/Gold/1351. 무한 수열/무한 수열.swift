let NPQ = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, P, Q) = (NPQ[0], NPQ[1], NPQ[2])
    var memo = [Int: Int]()

    func Infinity(_ input: Int) -> Int {
        if let result = memo[input] {
            return result
        }
        if input == 0 {
            return 1
        }
        
        let result = Infinity(input / P) + Infinity(input / Q)
        memo[input] = result
        
        return result
    }

    print(Infinity(N))
