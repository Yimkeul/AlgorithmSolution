import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var deciX = Array(repeating: 0, count: 10)
    var deciY = Array(repeating: 0, count: 10)
    
    var numList:[Int] = []
    
    for charX in X {
        if let intX = Int(String(charX)) {
            deciX[intX] += 1    
        }
    }
    
    for charY in Y {
        if let intY = Int(String(charY)) {
            deciY[intY] += 1    
        }
    }
    
    for key in 0 ..< 10 {
        numList += Array(repeating: key, count: min(deciX[key], deciY[key]))
    }
    
    // print(deciX)
    // print(deciY)
    // print(numList)
    
    if numList.isEmpty {
        return "-1"
    } 

    if numList.filter { $0 == 0 }.count == numList.count {
        return "0"
    }
    
    numList = numList.sorted(by: >)
    var result = ""
    for i in numList {
        result += String(i)
    }
    
    
    
    return result

}
