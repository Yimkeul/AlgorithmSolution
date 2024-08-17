// import Foundation

// func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
//     var queue = truck_weights
//     var cnt = 0
//     while !queue.isEmpty {
//         var sumWeight = 0    
//         for i in 0 ..< bridge_length {
//             if sumWeight <= weight  &&  !queue.isEmpty {
//                 sumWeight += queue.removeFirst()
//                 cnt += 1
//             }
//                 cnt += 1                    
//         }
//     }
    
//     return cnt
// }

import Foundation

func solution(_ bridge_length: Int, _ weight: Int, _ truck_weights: [Int]) -> Int { 
    var time = 0
    var bridgeQueue: [Int] = Array(repeating: 0, count: bridge_length)
    var bridgeWeight = 0
    var trucks = truck_weights
    
    while !bridgeQueue.isEmpty {
        time += 1
        bridgeWeight -= bridgeQueue.removeFirst()
        
        if let truck = trucks.first {
            if bridgeWeight + truck <= weight {
                bridgeQueue.append(truck)
                bridgeWeight += truck
                trucks.removeFirst()
            } else {
                bridgeQueue.append(0)
            }
        }
    }
    
    return time
}

