import Foundation


func makeDate(year:Int, month:Int, day:Int) -> Date {
    let calendar = Calendar.current
    var dateComponents = DateComponents()
    dateComponents.year = year
    dateComponents.month = month
    dateComponents.day = day
    let date = calendar.date(from: dateComponents)!
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy.MM.dd"
    let formattedDate = dateFormatter.string(from: date)
    // print("Formatted Date: \(formattedDate)")
    return date
}

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var ans:[Int] = []
    let todayData = today.split { $0 == "." }
    let (todayY, todayM, todayD) = (Int(todayData[0])!, Int(todayData[1])!, Int(todayData[2])!)
    // print("TT")
    let TT =  makeDate(year:todayY, month:todayM, day: todayD)
    var index = 1
    
    
    for i in privacies { 
        let privacyD = i.split(separator: " ")
        let (day, ptype) = (privacyD[0], privacyD[1])
        
        let targetDay = day.split {$0 == "."}
        var (targetY, targetM, targetD) = (Int(targetDay[0])!, Int(targetDay[1])!, Int(targetDay[2])!)
 
        for j in terms {
            let termD = j.split { $0 == " " }
            let (type, term) = (termD[0], Int(termD[1])!)
            if ptype == type {
                if targetM + term > 12 {
                    let temp = targetM + term - 12
                    targetY += 1
                    targetM = temp
                } else {
                    targetM += term
                }
                // print("TARD, \(ptype), \(type), \(targetY).\(targetM).\(targetD)")
                let TarD = makeDate(year:targetY, month: targetM, day: targetD)
                if TT >= TarD {
                    ans.append(index)
                }
            }
        }
        
        index += 1
    }
    
    return ans
}