var memo = [Int: Int]()

func solution(_ n:Int) -> Int {
    return Fibo(n)%1234567
}

func Fibo(_ n:Int) -> Int {
    if n == 1 {
        return 1
    } else if n == 2 {
        return 2
    }
        if let result = memo[n] {
        return result
    }

    let result = (Fibo(n - 1) + Fibo(n - 2)) % 1234567
    memo[n] = result

    return result
}