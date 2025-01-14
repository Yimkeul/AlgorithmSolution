import Foundation    

func solution(_ operations: [String]) -> [Int] {
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