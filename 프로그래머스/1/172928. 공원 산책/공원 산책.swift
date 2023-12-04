//
//  main.swift
//  programmers
//
//  Created by yimkeul on 12/5/23.
//

import Foundation

func solution(_ park: [String], _ routes: [String]) -> [Int] {
    let rows = park.count
    let cols = park[0].count

    var startRow = 0
    var startCol = 0

    // 시작 위치 찾기
    for (i, row) in park.enumerated() {
        if let col = row.firstIndex(of: "S") {
            startRow = i
            startCol = row.distance(from: row.startIndex, to: col)
            break
        }
    }

    var currentRow = startRow
    var currentCol = startCol
    for route in routes {
        let components = route.split(separator: " ")
        let direction = components[0]
        let distance = Int(components[1])!

        var tempRow = currentRow
        var tempCol = currentCol
        for _ in 0 ..< distance {
            switch direction {
            case "N":
                tempRow -= 1
            case "S":
                tempRow += 1
            case "W":
                tempCol -= 1
            case "E":
                tempCol += 1
            default: continue
            }
            if tempRow < 0 || tempRow >= rows || tempCol < 0 || tempCol >= cols {
                tempRow = currentRow
                tempCol = currentCol
                currentRow = tempRow
                currentCol = tempCol
                break
            } else {
                let check = park[tempRow].index(park[tempRow].startIndex, offsetBy: tempCol)
                let checkIndex = park[tempRow][check]
                if checkIndex == "X" {
                    tempRow = currentRow
                    tempCol = currentCol
                    currentRow = tempRow
                    currentCol = tempCol
                    break
                }
            }
         
        }
        currentRow = tempRow
        currentCol = tempCol
    }

    return [currentRow, currentCol]


}
