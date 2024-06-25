//
//  2606.swift
//  solved
//
//  Created by yimkeul on 6/26/24.
//

import Foundation
let _ = Q_2606()
func Q_2606() {
    let Computer = Int(readLine()!)! // 0 ... 100
    let pair = Int(readLine()!)!
    var answer = 0
    var graph:[[Int]] = Array(repeating: Array(repeating: 0, count: Computer), count: Computer)
    var isCheck:[Bool] = Array(repeating: false, count: Computer)
    for _ in 0 ..< pair {
        let input = readLine()!.split { $0 == " " }.map { Int($0)! }
        let (B,A) = (input[0] - 1, input[1] - 1)
        graph[A][B] = 1
        graph[B][A] = 1
    }
    dfs(0, &graph, &isCheck)
    print(answer - 1)
    
    func dfs(_ start:Int, _ graph: inout[[Int]], _ check: inout[Bool]) {
        if check[start] {
            return
        }
        
        check[start] = true
        answer += 1
        for i in 0 ..< check.count {
            if graph[start][i] == 1 && !check[i] {
                dfs(i, &graph, &check)
            }
        }
        
        
    }
}
