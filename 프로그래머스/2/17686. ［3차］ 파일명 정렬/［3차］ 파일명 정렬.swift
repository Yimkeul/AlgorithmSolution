// import Foundation 

// func solution(_ files: [String]) -> [String] {
//         // 파일을 구성 요소로 분해하는 함수
//         func splitFile(_ file: String) -> (String, String, String) {
//             let pattern = "([a-zA-Z\\-\\. ]+)([0-9]+)(.*)"
//             let regex = try! NSRegularExpression(pattern: pattern)
            
//             if let match = regex.firstMatch(in: file, options: [], range: NSRange(file.startIndex..., in: file)) {
//                 let head = String(file[Range(match.range(at: 1), in: file)!])
//                 let number = String(file[Range(match.range(at: 2), in: file)!])
//                 let tail = String(file[Range(match.range(at: 3), in: file)!])
//                 return (head, number, tail)
//             }
//             return ("", "", "")
//         }

//         return files.sorted { file1, file2 in
//             let (head1, num1, _) = splitFile(file1)
//             let (head2, num2, _) = splitFile(file2)
            
//             // HEAD를 기준으로 정렬 (대소문자 무시)
//             let headComparison = head1.lowercased().compare(head2.lowercased())
//             if headComparison != .orderedSame {
//                 return headComparison == .orderedAscending
//             }
            
//             // NUMBER를 기준으로 정렬 (숫자로 비교)
//             if let intNum1 = Int(num1), let intNum2 = Int(num2) {
//                 if intNum1 != intNum2 {
//                     return intNum1 < intNum2
//                 }
//             }
            
//             // 원래 입력 순서 유지
//             return false
//         }
//     }

import Foundation

extension String{
    var numeric: ClosedRange<Character> { return "0"..."9" }
    var head: String{
        return self.prefix { numeric.contains($0) == false }.uppercased()
    }
    var number: Int {
        return Int( self.drop   { numeric.contains($0) == false}
                        .prefix { numeric.contains($0) == true })!
    }
}

func solution(_ files:[String]) -> [String] {

    return files.enumerated().sorted { (lhs, rhs) in
        let l = lhs.element
        let r = rhs.element
        if l.head != r.head { return l.head < r.head}
        if l.number != r.number { return l.number < r.number}
        return lhs.offset < rhs.offset

    }.map{ $0.element }
}