    let input = readLine()!.map { String($0) }

    let len = input.count
    var ans = "true"
    if len == 1 {
        print(ans)
    } else {
        for i in 0 ..< len / 2 {
            let front = input[i]
            let fin = input[len - 1 - i]
            if front != fin {
                ans = "false"
                break
            }
        }
        print(ans)
    }