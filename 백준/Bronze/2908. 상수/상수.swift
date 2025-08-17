import Foundation

let ab = readLine()!.split { $0 == " "}.map { String($0) }
let (a,b) = (Int(String(ab[0].reversed()))!, Int(String(ab[1].reversed()))!)

let maxValue = max(a,b)
print(maxValue)
