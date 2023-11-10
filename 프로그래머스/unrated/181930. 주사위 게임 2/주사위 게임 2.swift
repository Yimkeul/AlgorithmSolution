import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int) -> Int {
    // let check = checkValue(a,b,c)
    switch checkValue(a,b,c) {
        case "1": return (a+b+c)
        case "2": return (a+b+c) * (a*a + b*b + c*c)
        case "3": return (a+b+c) * (a*a + b*b + c*c) * (a*a*a + b*b*b + c*c*c) 
        default: return 0
    }
    return 0
}

func checkValue(_ a: Int, _ b: Int, _ c: Int) -> String {
    // MARK: 모두 같을때
    if a == b && b == c && a == c {
        return "3"
    }
    // MARK: 모두 다를때
    if a != b && b != c  && a != c {
        return "1"
    }
    // MARK: 두개 같을때
    return "2"
}