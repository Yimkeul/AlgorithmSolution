import Foundation

func solution(_ n:Int) -> [[Int]] {
    var ans: [[Int]] = []
    move(n, 1, 3, 2, &ans)
    return ans
}

func move(_ n :Int, _ from: Int, _ to: Int, _ via: Int, _ ans: inout [[Int]]) {
    if n == 1 {
        ans.append([from, to])
    } else {
        move(n - 1, from, via, to, &ans)
        ans.append([from, to])
        move(n - 1, via, to, from, &ans)
    }
}