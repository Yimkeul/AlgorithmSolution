func Q_17299() {
    let _ = Int(readLine()!)!
    let A = readLine()!.split { $0 == " " }.map { Int($0)! }

    var F: [Int] = Array(repeating: 0, count: 1000001)

    for i in A {
        F[i] += 1
    }

    var result: [Int] = Array(repeating: -1, count: A.count)
    var stack: [Int] = []

    for i in 0..<A.count {
        while !stack.isEmpty && F[A[stack.last!]] < F[A[i]] {
            result[stack.removeLast()] = A[i]
        }
        stack.append(i)
    }

    print(result.map { String($0) }.joined(separator: " "))

}
Q_17299()