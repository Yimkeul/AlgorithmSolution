// import Foundation

// func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
// {
//     var answer = 1
    
//     var A = min(a,b)
//     var B = max(a,b)
    
//     while (A,B) != (1,2) {
//         answer += 1
//         if (A % 2 == 0) {
//             A /=  2
//         } else {
//             A = (A / 2) + 1
//         }
        
//         if (B % 2 == 0) {
//             B /=  2
//         } else {
//             B = (B / 2) + 1
//         }
//     }
    
//     return answer
// }


import Foundation

func solution(_ n: Int, _ a: Int, _ b: Int) -> Int {
    var A = a
    var B = b
    var round = 0

    while A != B {
        A = (A + 1) / 2
        B = (B + 1) / 2
        round += 1
    }

    return round
}
