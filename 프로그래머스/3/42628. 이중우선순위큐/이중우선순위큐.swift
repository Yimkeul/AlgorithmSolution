import Foundation

    func operation(_ C: String, _ dig: Int , _ queue: inout [Int]) {
        switch C {
            case "I":
                queue.append(dig)
            case "D":
                if !queue.isEmpty {
                    if dig == 1 {
                    let maxIndex = queue.firstIndex(of: queue.max()!)!
                    queue.remove(at: maxIndex)
                } else {
                    let minIndex = queue.firstIndex(of: queue.min()!)!
                    queue.remove(at: minIndex)
                }
                }
            default: 
            break
        }    
    }
    

func solution(_ operations:[String]) -> [Int] {

    var queue = [Int]()
    var ans = [Int]()
    
    for op in operations {
        let line = op.split { $0 == " "}
        let c = String(line[0]), dig = Int(line[1])!
        operation(c, dig, &queue)
    }
    
    if queue.isEmpty {
        ans = [0,0]
    } else {
        ans.append(queue.max()!)
        ans.append(queue.min()!)
    }
    
    
    
    
    
    
    
    return ans
}