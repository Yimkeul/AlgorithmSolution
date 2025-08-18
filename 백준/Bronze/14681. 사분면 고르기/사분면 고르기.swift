import Foundation

let x = Int(readLine()!)!
let y = Int(readLine()!)!

switch (x, y) {
case let (a, b) where a > 0 && b > 0:
    print(1)
case let (a, b) where a < 0 && b > 0:
    print(2)
case let (a, b) where a < 0 && b < 0:
    print(3)
case let (a, b) where a > 0 && b < 0:
    print(4)
default:
    break
}
