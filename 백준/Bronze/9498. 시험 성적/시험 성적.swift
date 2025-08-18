import Foundation

let score = Int(readLine()!)!

switch score {
case 90...:
    print("A")
case 80 ... 89:
    print("B")
case 70 ... 79:
    print("C")
case 60 ... 69:
    print("D")
default:
    print("F")
}
