//
//  10451.swift
//  solved
//
//  Created by yimkeul on 6/26/24.
//

import Foundation

let _ = Q_10451()

func Q_10451() {
    let T = Int(readLine()!)!
    for _ in 0 ..< T {
        var answer = 0
        let N = Int(readLine()!)!
        var graph: [[Int]] = Array(repeating: [], count: N)
        var isCheck: [Bool] = Array(repeating: false, count: N)
        let input = readLine()!.split { $0 == " " }.map { Int($0)! }
        for i in 0 ..< N {
            let to = input[i] - 1
            graph[i].append(to)
            graph[to].append(i)
        }

        for i in 0 ..< N {
            if !isCheck[i] {
                dfs(i, &graph, &isCheck)
                answer += 1
            }
        }

        print(answer)
    }

    func dfs(_ start: Int, _ graph: inout[[Int]], _ check: inout[Bool]) {
        if check[start] { return }
        check[start] = true
        for i in graph[start] {
            if !check[i] {
                dfs(i, &graph, &check)
            }
        }
    }
}
