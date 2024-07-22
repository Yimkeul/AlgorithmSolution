import Foundation
let N = Int(readLine()!)!
    let sizes = readLine()!.split { $0 == " " }.map { Int($0)! }
    let TP = readLine()!.split { $0 == " " }.map { Int($0)! }
    let (T, P) = (TP[0], TP[1])
    
    print(sizes.map { Int(ceil(Double($0) / Double(T))) }.reduce(0, +))
    print(N / P , N % P)