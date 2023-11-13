import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var ans:[Int] = []
    for query in queries {
        let s = query[0]
        let e = query[1]
        let k = query[2]
        var tempAry:[Int] = []
        
        for index in s ... e {
            tempAry.append(arr[index])    
        
        }
  
        // print(tempAry)
        
        var temp = -1
        for i in tempAry.sorted() {
            if i > k {
                temp = i
                break
            } 
        }
        ans.append(temp)
    }
    return ans
}