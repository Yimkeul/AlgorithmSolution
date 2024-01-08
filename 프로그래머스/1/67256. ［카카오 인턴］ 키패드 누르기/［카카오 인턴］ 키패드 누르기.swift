import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var ans = ""    
    
    var LX = 0
    var LY = 3
    
    var RX = 2
    var RY = 3
    
    
    for num in numbers {
        if num == 1 || num == 4 || num == 7 {
            LX = 0
            switch num {
                case 1:
                    LY = 0
                case 4:
                    LY = 1
                case 7:
                    LY = 2
                default: 
                    LY = 3
            }
            ans += "L"
        } else if num == 3 || num == 6 || num == 9 {
            RX = 2
            switch num {
                case 3:
                    RY = 0
                case 6:
                    RY = 1
                case 9:
                    RY = 2
                default: 
                    RY = 3
            }
            ans += "R"
        } else {
            let numposX = 1
            var numposY = 0
            
            var LD = 0
            var RD = 0
            
            switch num {
                case 2:
                    numposY = 0
                case 5:
                    numposY = 1
                case 8:
                    numposY = 2
                case 0:
                    numposY = 3
                default:
                    numposY = 3
            }
            
            LD = distance(LX,LY,numposX,numposY)
            RD = distance(RX,RY,numposX,numposY)
            
            if LD > RD {
                ans += "R"
                RX = numposX
                RY = numposY
            } else if LD < RD {
                ans += "L"
                LX = numposX
                LY = numposY
            } else {
                if hand == "right" {
                    ans += "R"
                    RX = numposX
                    RY = numposY
                } else {
                    ans += "L"
                    LX = numposX
                    LY = numposY
                }
            }
            
        }
        
    }
    return ans
}

func distance(_ x:Int, _ y: Int, _ numx: Int, _ numy: Int) -> Int {
    // 유클리드 거리
    // let dis = sqrt( pow(Double(numx - x), 2) + pow(Double(numy - y), 2)  )
    
    // 맨해튼 거리
    let dis = abs(x - numx) + abs(y - numy)
    return dis
}