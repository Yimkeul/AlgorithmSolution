import Foundation

// func solution(_ word:String) -> Int {
//     let alpha = "AEIOU".map { String($0) }
//     var result = [String]()
    
//     func dfs(_ str: String) {
//         result.append(str)
//         if str.count == 5 { return }
//         for i in 0 ..< 5 {
//             dfs(str + alpha[i])
//         }
//     }
//     dfs("")
//     return result.firstIndex(of: word)!
// }



// func solution(_ word:String) -> Int {
//     let word = word.map { String($0) }
//     let dict = ["A": 1, "E": 2, "I": 3, "O": 4, "U": 5]
//     var nums = [1]
//     var sum = 0

//     for _ in 1..<5 {
//         if let num = nums.last {
//             nums.append(num * 5 + 1)
//         }
//     }

//     nums.reverse()

//     for i in 0..<word.count {
//         if let n = dict[word[i]] {
//             sum += nums[i] * (n-1) + 1
//         }
//     }

//     return sum
// }



func solution(_ word: String) -> Int {
    func dfs(curr: String) {
        result.append(curr)

        if curr.count == 5 { return }

        for i in 0..<5 {
            dfs(curr: curr + alphabet[i])
        }
    }

    let alphabet: [String] = ["A", "E", "I", "O", "U"]
    var result: [String] = []

    dfs(curr: "")

    return result.firstIndex(of: word)!
}