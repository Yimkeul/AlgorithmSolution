import Foundation

func solution(_ my_string: String) -> [Int] {
    var counts: [Int] = Array(repeating: 0, count: 52)

    for char in my_string {
        if let asciiValue = char.asciiValue {
            let index: Int
            if char.isUppercase {
                index = Int(asciiValue - Character("A").asciiValue!)
            } else {
                index = Int(asciiValue - Character("a").asciiValue!) + 26
            }
            counts[index] += 1
        }
    }

    return counts
}
