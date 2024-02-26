//
//  boj_1260.swift
//  solved.ac
//
//  Created by yimkeul on 2/26/24.
//

import Foundation

let input = readLine()!.split { $0 == " " }.map { Int(String($0))! }
let (N, M, V) = (input[0], input[1], input[2])
var visited: [Bool] = Array(repeating: false, count: N + 1)
var graph: [[Int]] = Array(repeating: [], count: N + 1)

for _ in 0 ..< M {
    let input = readLine()!.split { $0 == " " }.map { Int(String($0))! }
    let (n1, n2) = (input[0], input[1])
    graph[n1].append(n2)
    graph[n2].append(n1)
}
graph = graph.map { $0.sorted() }

func dfs(_ node: Int) {
    visited[node] = true
    print(node, terminator: " ")

    for nextNode in graph[node] {
        if !visited[nextNode] {
            dfs(nextNode)
        }
    }
}

func bfs(_ node: Int) {
    var queue = [node]
    var index = 0
    visited[node] = true
    while queue.count > index {
        let currentNode = queue[index]
        print(currentNode, terminator: " ")

        for nextNode in graph[currentNode] {
            if !visited[nextNode] {
                visited[nextNode] = true
                queue.append(nextNode)
            }
        }
        index += 1
    }
}
dfs(V)
visited = Array(repeating: false, count: N + 1)
print()
bfs(V)
