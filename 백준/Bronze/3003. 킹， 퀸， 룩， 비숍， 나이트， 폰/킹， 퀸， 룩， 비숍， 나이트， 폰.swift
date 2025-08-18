import Foundation

let pices = readLine()!.split { $0 == " " }.map { Int($0)! }
let sample = [1, 1, 2, 2, 2, 8]
for i in 0 ..< 6 {
    if sample[i] >= pices[i] {
        print(sample[i] - pices[i], terminator: " ")
    } else {
        print((pices[i] - sample[i]) * -1, terminator: " ")
    }
}
