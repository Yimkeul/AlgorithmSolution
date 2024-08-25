import Foundation

    let line = readLine()!.split(separator: " ").map { Double($0)! }
    let H = line[0], W = line[1], N = line[2], M = line[3]
    let a = ceil(H/(N+1))
    let b = ceil(W/(M+1))
    print(Int(a*b))