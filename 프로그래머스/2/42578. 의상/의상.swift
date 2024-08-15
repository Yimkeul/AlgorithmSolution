import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dics = [String:[String]]()
    
    for cloth in clothes {
        let name = String(cloth[0])
        let type = String(cloth[1])
        dics[type, default: []].append(name)
    }
    var ans = 1

    for (_, items) in dics {
        ans *= (items.count + 1)  
    }

    return ans - 1 
}