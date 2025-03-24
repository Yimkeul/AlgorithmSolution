import Foundation    

func solution(_ operations: [String]) -> [Int] {
//     var queue = [Int]()
    
//     for op in operations {
//         let input = op.split { $0 == " "}.map { String($0) }
//         let operation = input[0]
//         let value = Int(input[1])!
//         if operation == "I" {
//             queue.append(value)
//         } else {
//             if value == 1 {
//                 if let index = queue.firstIndex { $0 == queue.max()! } {
//                     queue.remove(at: index)                    
//                 }
                
//             } else {
//                 if let index = queue.firstIndex { $0 == queue.min()! } {
//                         queue.remove(at: index)    
//                 }
//             }
//         }
//     }

    
//     return queue.isEmpty ? [0,0] : [queue.max()!, queue.min()!]
    
    
            var queue = [Int]()

        for oper in operations {
            let line = oper.split { $0 == " " }.map { String($0) }
            let (op, value) = (line[0], Int(line[1])!)
            switch op {
            case "I":
                queue.append(value)
            case "D":
                if !queue.isEmpty {
                    if value == 1 {
                        if let index = queue.firstIndex(of: queue.max()!) {
                            queue.remove(at: index)
                        }
                    } else {
                        if let index = queue.firstIndex(of: queue.min()!) {
                            queue.remove(at: index)
                        }
                    }
                }
            default:
                break
            }
        }
        return queue.isEmpty ? [0, 0] : [queue.max()!, queue.min()!]
}













