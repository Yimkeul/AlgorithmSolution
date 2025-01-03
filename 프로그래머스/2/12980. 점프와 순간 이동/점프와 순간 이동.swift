func solution(_ n: Int) -> Int {
    var count = 0
    var current = n

    while current > 0 {
        if current % 2 == 0 {
            current /= 2
        } else {
            current -= 1
            count += 1
        }
    }

    return count
}
