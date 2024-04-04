import Foundation

struct Position {
    let X: Int
    let Y: Int
}

func Moving(X: Int, Y: Int, _ move: String) -> Position {
    switch move {
    case "R":
        return Position(X: X + 1, Y: Y + 0)
    case "L":
        return Position(X: X - 1, Y: Y + 0)
    case "B":
        return Position(X: X + 0, Y: Y - 1)
    case "T":
        return Position(X: X + 0, Y: Y + 1)
    case "RT":
        return Position(X: X + 1, Y: Y + 1)
    case "LT":
        return Position(X: X - 1, Y: Y + 1)
    case "RB":
        return Position(X: X + 1, Y: Y - 1)
    case "LB":
        return Position(X: X - 1, Y: Y - 1)
    default:
        return Position(X: X + 0, Y: Y + 0)
    }
}

func splitPosition(_ move: String) -> Position {
    let temp = Array(move)
    switch String(temp[0]) {
    case "A":
        return Position(X: 1, Y: Int(String(temp[1]))!)
    case "B":
        return Position(X: 2, Y: Int(String(temp[1]))!)
    case "C":
        return Position(X: 3, Y: Int(String(temp[1]))!)
    case "D":
        return Position(X: 4, Y: Int(String(temp[1]))!)
    case "E":
        return Position(X: 5, Y: Int(String(temp[1]))!)
    case "F":
        return Position(X: 6, Y: Int(String(temp[1]))!)
    case "G":
        return Position(X: 7, Y: Int(String(temp[1]))!)
    case "H":
        return Position(X: 8, Y: Int(String(temp[1]))!)
    default:
        return Position(X: 0, Y: 0)
    }
}


fileprivate func isRange(_ po: Position) -> Bool {
    if po.X <= 0 ||
        po.X > 8 ||
        po.Y <= 0 ||
        po.Y > 8
    {
        return false
    }
    return true
}

fileprivate func positionToString(_ position: Position) -> String {
    var answer = ""
    switch position.X {
    case 1:
        answer += "A"
        answer += String(position.Y)
        break
    case 2:
        answer += "B"
        answer += String(position.Y)
        break
    case 3:
        answer += "C"
        answer += String(position.Y)
        break
    case 4:
        answer += "D"
        answer += String(position.Y)
        break
    case 5:
        answer += "E"
        answer += String(position.Y)
        break
    case 6:
        answer += "F"
        answer += String(position.Y)
        break
    case 7:
        answer += "G"
        answer += String(position.Y)
        break
    case 8:
        answer += "H"
        answer += String(position.Y)
        break
    default :
        break
    }
    return answer
}


 let input = readLine()!.split { $0 == " " }
    let (king, stone, N) = (input[0], input[1], Int(input[2])!)
    var poKing = splitPosition(String(king))
    var poStone = splitPosition(String(stone))
for _ in 0 ..< N {
        let move = readLine()!
        let afterKingMove = Moving(X: poKing.X, Y: poKing.Y, move)
        if isRange(afterKingMove) {
            // 같은 경우 밀기
            if (afterKingMove.X == poStone.X) && (afterKingMove.Y == poStone.Y) {
                let afterStoneMove = Moving(X: poStone.X, Y: poStone.Y, move)
                if isRange(afterStoneMove) {
                    poKing = afterKingMove
                    poStone = afterStoneMove
                }
            } else {
                poKing = afterKingMove
            }
//
        }
//        print(poKing, poStone)
    }
    print(positionToString(poKing))
    print(positionToString(poStone))