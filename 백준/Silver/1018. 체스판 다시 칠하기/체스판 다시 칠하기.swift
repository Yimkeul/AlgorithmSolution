let NM = readLine()!.split { $0 == " "}.map { Int($0)! }
    let (N,M) = (NM[0], NM[1])
    
    let board1: [[Character]] = [["W","B","W","B","W","B","W","B"],
                                 ["B","W","B","W","B","W","B","W"],
                                 ["W","B","W","B","W","B","W","B"],
                                 ["B","W","B","W","B","W","B","W"],
                                 ["W","B","W","B","W","B","W","B"],
                                 ["B","W","B","W","B","W","B","W"],
                                 ["W","B","W","B","W","B","W","B"],
                                 ["B","W","B","W","B","W","B","W"]]

    let board2: [[Character]] = [["B","W","B","W","B","W","B","W"],
                                 ["W","B","W","B","W","B","W","B"],
                                 ["B","W","B","W","B","W","B","W"],
                                 ["W","B","W","B","W","B","W","B"],
                                 ["B","W","B","W","B","W","B","W"],
                                 ["W","B","W","B","W","B","W","B"],
                                 ["B","W","B","W","B","W","B","W"],
                                 ["W","B","W","B","W","B","W","B"]]


    var chessboard = [[Character]]()

    for _ in 0..<N{
      let y = readLine()!
      chessboard.append(Array(y))
    }

    var result = Int.max

    for y in 0...(N - 8)  {
      for x in 0...(M - 8) {
        var count1 = 0, count2 = 0
        for i in y..<(y + 8) {
          for j in x..<(x + 8) {
            if chessboard[i][j] != board1[i - y][j - x] {
              count1 += 1
            }
            if chessboard[i][j] != board2[i - y][j - x] {
              count2 += 1
            }
          }
        }
        result = min(result, count1, count2)
      }
    }

    print(result)
