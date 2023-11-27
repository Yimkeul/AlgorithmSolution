import Foundation

func solution(_ binomial:String) -> Int {
    var components = binomial.components(separatedBy: ["+", "-", "*"])
    components = components.map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
    // print(components)
    var ans = 0
    if binomial.contains("+") {
         ans = Int(components[0])! + Int(components[1])!
    } else if binomial.contains("-") {
        ans = Int(components[0])! - Int(components[1])!
    } else {
        ans = Int(components[0])! * Int(components[1])!
    }
    
    // print(ans)
  
    return ans
}