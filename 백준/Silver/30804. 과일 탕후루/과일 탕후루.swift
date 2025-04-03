let N = Int(readLine()!)!
    let fruits = readLine()!.split { $0 == " "}.map { Int($0)!}
    
    var start = 0, end = 0
    var maxLength = 0
    var fruitCount = [Int: Int]() // 현재 윈도우 내의 과일 개수 저장
    
    while end < fruits.count {
        // 현재 과일 추가
        fruitCount[fruits[end], default: 0] += 1
        
        // 과일 종류가 2개를 초과하면 start를 조정
        while fruitCount.keys.count > 2 {
            fruitCount[fruits[start], default: 0] -= 1
            if fruitCount[fruits[start]] == 0 {
                fruitCount.removeValue(forKey: fruits[start])
            }
            start += 1
        }
        
        // 현재 구간의 길이를 계산해서 최대값 갱신
        maxLength = max(maxLength, end - start + 1)
        
        end += 1
    }
    
    print(maxLength)
