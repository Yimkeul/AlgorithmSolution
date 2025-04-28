import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var termsDic = [String:Int]()
    
    for term in terms {
        let parts = term.split { $0 == " "}.map { String($0) }
        let type = parts[0], month = Int(parts[1])!
        termsDic[type] = month
    }
    
    func dateType(_ date: String) -> Int {
        let parts = date.split{$0 == "."}.map {Int($0)!}
        let year = parts[0], month = parts[1], day = parts[2]
        return (year * 12 * 28) + (month * 28) + day
    }
    
    let today = dateType(today)
    var answer = [Int]()
    
    
    for (i, privacy) in privacies.enumerated() {
        let parts = privacy.split { $0 == " "}.map { String($0) }
        let collectedDate = parts[0]
        let termType = parts[1]
        
        let expireDays = dateType(collectedDate) + (termsDic[termType]! * 28) - 1
        
        if expireDays < today {
            answer.append(i + 1)
        }
    }
    

    return answer
}