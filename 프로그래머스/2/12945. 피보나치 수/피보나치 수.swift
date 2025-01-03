func solution(_ n:Int) -> Int {
    return fibo(n) 
}
func fibo(_ n: Int) -> Int{
    var cache: [Int] = [0, 1]
    
    for num in 2...n {
        cache.append(cache[num - 1] % 1234567 + cache[num - 2] % 1234567)
    }
    return cache[n] % 1234567
}