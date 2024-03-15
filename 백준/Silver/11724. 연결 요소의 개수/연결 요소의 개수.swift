//
//  main.swift
//  solved
//
//  Created by yimkeul on 3/12/24.
//

import Foundation

let input = readLine()!.split { $0 == " " }.map { Int($0)! }
let (n, m) = (input[0], input[1])
var maps = Array(repeating: [Int](), count: n + 1)
var visited = Array(repeating: false, count: n + 1)
var ans = 0

func dfs(start: Int) {
    visited[start] = true
    for i in 0 ..< maps[start].count {
        let next = maps[start][i]
        if visited[next] == false {
            dfs(start: next)
        }
    }
}


for _ in 0 ..< m {
    let input = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (u, v) = (input[0], input[1])
    maps[u].append(v)
    maps[v].append(u)
}

for i in 1 ..< n + 1 {
    if !visited[i] {
        if maps[i].isEmpty {
            ans += 1
        } else {
            dfs(start: i)
            ans += 1
        }
    }
}

print(ans)

