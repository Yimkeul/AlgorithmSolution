let N = Int(readLine()!)!
    var paper = [[Int]]()
    var white = 0
    var blue = 0
    for _ in 0 ..< N {
        paper.append(readLine()!.split { $0 == " " }.map { Int($0)! })
    }

    func divideAndConquer(_ x: Int, _ y: Int, _ size: Int) {
        let first = paper[x][y]
        var isSame = true
        
        for i in x ..< x+size {
            for j in y ..< y+size {
                if paper[i][j] != first {
                    isSame = false
                    break
                }
            }
            if !isSame { break }
        }
        
        if isSame {
            if first == 0 {
                white += 1
            } else {
                blue += 1
            }
            return
        }
        
        let newSzie = size / 2
        divideAndConquer(x, y, newSzie)
        divideAndConquer(x, y + newSzie, newSzie)
        divideAndConquer(x + newSzie, y, newSzie)
        divideAndConquer(x + newSzie, y + newSzie, newSzie)
    }
    divideAndConquer(0, 0, N)
    print(white)
    print(blue)
