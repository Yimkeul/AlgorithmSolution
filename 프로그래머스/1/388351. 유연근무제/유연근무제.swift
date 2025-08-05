import Foundation

func solution(_ schedules:[Int], _ timelogs:[[Int]], _ startday:Int) -> Int {
    
    var ans = 0
    
    for i in 0 ..< schedules.count {
        let time = String(schedules[i])
        var hour = 0
        var minute = 0
        if time.count > 3 {
            hour = Int(String(time.prefix(2)))!
        } else {
            hour = Int(String(time.prefix(1)))!
        }
        minute = Int(String(time.suffix(2)))! + 10
        
        if minute >= 60 {
            hour += 1
            minute -= 60 
        }

        
        let maxTime = hour * 100 + minute
        // print(i, maxTime)
        for j in 0 ..< timelogs.count where ( i == j ) {
            var temp = 0
            for k in 0 ..< timelogs[j].count {
                
                if  (k + startday) % 7 != 6 && (k + startday) % 7 != 0 {
                // print("TT : \(k)")    
                    if timelogs[j][k] <= maxTime {
                    temp += 1
                    }
                }
                
            }
            ans = temp >= 5 ? ans + 1 : ans
        }
    }
    
    return ans
}

