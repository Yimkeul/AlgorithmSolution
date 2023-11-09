import Foundation
func solution(_ ineq: String, _ eq: String, _ n: Int, _ m: Int) -> Int {
    let signal = ineq + eq
    var result = 0
    
    switch signal {
    case "<=":
        result = n <= m ? 1 : 0
    case ">=":
        result = n >= m ? 1 : 0
    case "<!":
        result = n < m ? 1 : 0
    case ">!":
        result = n > m ? 1 : 0
    default:
        result = 0
    }
    
    print(signal)
    return result
}
