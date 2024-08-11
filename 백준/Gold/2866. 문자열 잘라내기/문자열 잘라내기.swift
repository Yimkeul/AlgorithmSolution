let RC = readLine()!.split { $0 == " " }.map { Int($0)! }
let (R, C) = (RC[0], RC[1])
var grid = [[Character]]()

for _ in 0 ..< R {
    grid.append(Array(readLine()!))
}

var left = 0
var right = R - 1
var result = 0

while left <= right {
    let mid = (left + right) / 2
    var compare = Set<String>()
    var isUnique = true

    for col in 0..<C {
        var temp = ""
        for row in mid..<R {
            temp.append(grid[row][col])
        }
        if compare.contains(temp) {
            isUnique = false
            break
        }
        compare.insert(temp)
    }

    if isUnique {
        result = mid
        left = mid + 1
    } else {
        right = mid - 1
    }
}

print(result)
