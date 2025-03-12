import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    
    var graph = [String: [String]]()
    
    for ticket in tickets {
        let (A,B) = (ticket[0], ticket[1])
        graph[A, default: []].append(B)
    }
    
    for key in graph.keys {
        graph[key]?.sort(by: <)
    }


    var result = [String]()
    
    func dfs(_ start: String) {
        while let next = graph[start]?.first {
            graph[start]?.removeFirst()
            dfs(next)
        }
        result.append(start)
    }
    dfs("ICN")
    print(result)

    
//     var graph = [[Int]](repeating: [], count : airportNumber.count)
//     var visited = [Bool](repeating: false, count: airportNumber.count)
    
//     for ticket in tickets {
//         let A = airportNumber.firstIndex { $0 == ticket[0] }!
//         let B = airportNumber.firstIndex { $0 == ticket[1] }!
//         graph[A].append(B)
//         graph[B].append(A)
//         print(A,B)
//     }
    
//     func bfs(_ start: Int) -> [Int] {
//         var queue = [start]
//         visited[start] = true
        
//         var visitedAirportNumber = [Int]()
//         visitedAirportNumber.append(start)
        
//         while !queue.isEmpty {
//             var node = queue.removeFirst()
//             for n in graph[node] {
//                 if !visited[n] {
//                     visited[n] = true
//                     visitedAirportNumber.append(n)
//                     queue.append(n)    
//                 }
//             }   
//         }
//         return visitedAirportNumber
//     }
    
//     let visitedAirportNumber = bfs(0)
    
//     for i in visitedAirportNumber {
//         result.append(airportNumber[i])
//     }
//     print(result)
    
    return result.reversed()
}