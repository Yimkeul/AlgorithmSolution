//
//  1389.swift
//  solved
//
//  Created by yimkeul on 6/27/24.
//

import Foundation

func Q_1389() {
    struct Queue<T> {
        var queue = [T]()
        var index = 0

        var isEmpty: Bool {
            return queue.count - index == 0
        }

        mutating func push(_ e: T) {
            queue.append(e)
        }
        mutating func pop() -> T {
            defer {
                index += 1
            }
            return queue[index]
        }
    }


    let input = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (N, M) = (input[0], input[1])
    var graph: [[Bool]] = Array(repeating: Array(repeating: false, count: N + 1), count: N + 1)



    for _ in 0 ..< M {
        let input = readLine()!.split { $0 == " " }.map { Int($0)! }
        let (A, B) = (input[0], input[1])
        graph[A][B] = true
        graph[B][A] = true
    }

    func bfs(_ n: Int) -> Int {
        var queue = Queue<(Int, Int)>()
        var visited: [Bool] = Array(repeating: false, count: N + 1)
        var cnt = 0
        queue.push((n, 0))
        visited[n] = true
        while !queue.isEmpty {
            let now = queue.pop()
            cnt += now.1
            for i in 1 ... N {
                if graph[now.0][i] && !visited[i] {
                    queue.push((i, now.1 + 1))
                    visited[i] = true
                }
            }
        }
        return cnt
    }

    var result: [Int] = Array(repeating: Int.max, count: N + 1)
    for i in 1 ... N {
        result [i] = bfs(i)
    }
    
    print(result.firstIndex(of: result.min()!)!)


}
let _ = Q_1389()