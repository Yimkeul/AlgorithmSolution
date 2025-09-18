let K = Int(readLine()!)!
    let enter = readLine()!.split { $0 == " " }.map { Int($0)! }

    var answer = Array(repeating: [Int](), count: K)

    func find(_ left: Int, _ right: Int, level: Int) {
        if left > right {
            return
        }

        let mid = (left + right) / 2
        answer[level].append(enter[mid])
        find(left, mid - 1, level: level + 1)
        find(mid + 1, right, level: level + 1)

    }

    find(0, enter.count - 1, level: 0)
    answer.forEach {
        $0.forEach{
            print($0, terminator: " ")
        }
        print()
    }