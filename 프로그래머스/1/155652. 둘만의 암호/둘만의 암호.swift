import Foundation
 func solution(_ s:String, _ skip:String, _ index:Int) -> String {
     let alps = Array(Set("abcdefghijklmnopqrstuvwxyz").subtracting(Set(skip))).sorted()

    let alpsNum = alps.count // 알파벳 개수
    var result = "" // 결과 문자열

    // 문자열 s를 한 글자씩 처리합니다.
    for char in s {
        // 1. 현재 문자 char가 alps 배열에서 몇 번째 위치에 있는지 찾기
        // 2. 주어진 index만큼 더한 후 새로운 위치를 계산하고 유효한 범위 내로 조정
        // 3. 새로운 위치에 해당하는 알파벳을 결과 문자열에 추가
        if let charIndex = alps.firstIndex(of: char) {
            let newIndex = (charIndex + index) % alpsNum
            result.append(alps[newIndex])
        } else {
            // 만약 char가 alps 배열에 없는 경우, 그대로 결과에 추가
            result.append(char)
        }
    }

    return result
}

// func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    
//     let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
//     var result = ""
//     print(alphabet.firstIndex(of: "a")! % 26)
//     print(alphabet.firstIndex(of: "z")! % 26)
    
//     for char in s {
//         let start = alphabet.firstIndex(of: char)!
//         var bfin = (alphabet.firstIndex(of: char)! + index) % 26
        
//         let cntSkip = checkCount(start,bfin,skip)
//         var fin = (bfin + cntSkip) % 26
//         // fin += cntSkip
//         print(start, bfin, fin, cntSkip, alphabet[fin])
//         result += String(alphabet[fin])
//     }
    

    
//     return result

// }

// func checkCount(_ start: Int , _ fin: Int, _ arr: String) -> Int {
//     let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
//     var cnt:Int = 0
//     for i in arr {
//         let target = alphabet.firstIndex(of: i)!
//         if start < target && target <= fin {
//             cnt += 1
//         }
//     }
//     return cnt
// }