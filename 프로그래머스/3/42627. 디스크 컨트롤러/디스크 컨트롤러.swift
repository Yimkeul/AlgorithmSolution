import Foundation

func solution(_ jobs:[[Int]]) -> Int {
    var queue = jobs
    queue.sort { $0[0] < $1[0] }
    var now = queue[0][0]
    var ans = 0
    
    while !queue.isEmpty {
        queue.sort { 
            if $0[0] <= now && $1[0] <= now {
                return $0[1] + now < $1[1] + now     
            } else {
               return $0[0] < $1[0]
            }
        }

        // print(queue)
        let process = queue.removeFirst()
        let (start, end) = (process[0], process[1])
        // print("TTT: ",now,start,end)
        now += start > now ? start - now + end : end
        let test = start <= now ? now - start :  end
        // print(now, "::: ", now - start, "||| ", now + start)
        ans += test
        // print(now,":::",test,"|||", ans)
        
    }
    
    return ans / jobs.count
}