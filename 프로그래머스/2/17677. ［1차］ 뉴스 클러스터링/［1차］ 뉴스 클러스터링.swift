// func solution(_ str1:String, _ str2:String) -> Int {
//     var str1Array = [String]()
//     var str1 = str1.map { String($0) }
//     for i in 1 ..< str1.count {
//         let str = str1[i - 1] + str1[i]
//         str1Array.append(str.lowercased)
//     }
    
//     var str2Array = [String]()
//     var str2 = str2.map { String($0) }
//     for i in 1 ..< str2.count {
//         let str = str2[i - 1] + str2[i]
//         str2Array.append(str.lowercased)
//     }
    
//     str1Array = str1Array.filter { $0.count == 2 && $0.allSatisfy { $0.isLetter }}
//     str2Array = str2Array.filter { $0.count == 2 && $0.allSatisfy { $0.isLetter }}
    
    
//     var unionArray = [String]()
    
    
//     var str2ArrayCopy = str2Array
//     unionArray = str1Array.filter { element in  
//         if let index = str2ArrayCopy.firstIndex(of: element) {
//             str2ArrayCopy.remove(at: index)
//             return true
//         }
//         return false
//     }
    
//     let longerArray = str1Array.count > str2Array.count ? str1Array : str2Array
//     let shorterArray = str1Array.count > str2Array.count ? str2Array : str1Array
    
//     var sumArray = longerArray
    
    
//     for i in shorterArray {
//         if !sumArray.contains(i) {
//             sumArray.append(i)
//         }
//     }
    
//     let A:Double = unionArray.isEmpty ? 1.0 : Double(unionArray.count)
//     let B:Double = sumArray.isEmpty ? 1.0 : Double(sumArray.count)
    
//     let answer = (A / B) * 65536
//     return Int(answer)
// }

import Foundation

func solution(_ str1: String, _ str2: String) -> Int {
    // 다중집합 생성 함수
    func makeMultiSet(_ str: String) -> [String] {
        var multiSet = [String]()
        let lowerStr = str.lowercased()
        
        for i in 0..<lowerStr.count - 1 {
            let first = lowerStr[lowerStr.index(lowerStr.startIndex, offsetBy: i)]
            let second = lowerStr[lowerStr.index(lowerStr.startIndex, offsetBy: i + 1)]
            if first.isLetter && second.isLetter { // 영문자만 유효
                multiSet.append("\(first)\(second)")
            }
        }
        return multiSet
    }

    // 교집합 크기 계산
    func intersection(_ set1: [String], _ set2: [String]) -> Int {
        var set2Copy = set2
        var count = 0
        
        for item in set1 {
            if let index = set2Copy.firstIndex(of: item) {
                count += 1
                set2Copy.remove(at: index)
            }
        }
        return count
    }

    // 합집합 크기 계산
    func union(_ set1: [String], _ set2: [String]) -> Int {
        var set1Copy = set1
        var set2Copy = set2
        
        for item in set1 {
            if let index = set2Copy.firstIndex(of: item) {
                set2Copy.remove(at: index)
            }
        }
        return set1Copy.count + set2Copy.count
    }

    // 다중집합 생성
    let multiSet1 = makeMultiSet(str1)
    let multiSet2 = makeMultiSet(str2)

    // 교집합과 합집합 크기 계산
    let interCount = intersection(multiSet1, multiSet2)
    let unionCount = union(multiSet1, multiSet2)

    // 자카드 유사도 계산
    let jaccardSimilarity = unionCount == 0 ? 1.0 : Double(interCount) / Double(unionCount)

    // 결과 반환 (65536 곱해서 정수로)
    return Int(jaccardSimilarity * 65536)
}
