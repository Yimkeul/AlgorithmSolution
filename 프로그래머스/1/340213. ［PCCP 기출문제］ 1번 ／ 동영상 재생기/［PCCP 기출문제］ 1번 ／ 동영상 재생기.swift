import Foundation

func solution(_ video_len:String, _ pos:String, _ op_start:String, _ op_end:String, _ commands:[String]) -> String {
    var answer = pos
    for c in commands {
        answer = skip(answer, op_start, op_end)
        if c == "next" {
            answer = next(video_len, answer)
        } else {
            answer = prev(video_len, answer)
        }
        answer = skip(answer, op_start, op_end)
        
    }
    return answer
}

func next(_ video_len:String, _ pos: String) -> String {
    let videoTime:[Int] = video_len.split { $0 == ":" }.map { Int($0)! }
    let (vmin, vsec) = (videoTime[0], videoTime[1])
    let vtotal = vmin*60 + vsec
    
    let times:[Int] = pos.split { $0 == ":" }.map { Int($0)! }
    let (min, sec) = (times[0], times[1])
    var total = min*60 + sec
    
    if vtotal - total < 10 {
        return video_len
    } else {
       total += 10
        let tempMin = String(total/60)
        let tempSec = String(total%60)
        
        var rMin = tempMin.count == 1 ? "0"+tempMin : tempMin
        var rSec = tempSec.count == 1 ? "0"+tempSec : tempSec
        
        return rMin+":"+rSec
    }
}

func prev(_ video_len:String, _ pos: String) -> String {
    let videoTime:[Int] = video_len.split { $0 == ":" }.map { Int($0)! }
    let (vmin, vsec) = (videoTime[0], videoTime[1])
    let vtotal = vmin*60 + vsec
    
    let times:[Int] = pos.split { $0 == ":" }.map { Int($0)! }
    let (min, sec) = (times[0], times[1])
    var total = min*60 + sec
    
    if total < 10 {
        return "00:00"
    } else {
       total -= 10
        let tempMin = String(total/60)
        let tempSec = String(total%60)
        
        var rMin = tempMin.count == 1 ? "0"+tempMin : tempMin
        var rSec = tempSec.count == 1 ? "0"+tempSec : tempSec
        
        return rMin+":"+rSec
    }
    
}

func skip(_ pos: String,_ op_start:String, _ op_end:String) -> String {
    if op_start <= pos && pos <= op_end {
        return op_end
    } else {
        return pos
    }
}