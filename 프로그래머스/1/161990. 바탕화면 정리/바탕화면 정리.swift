import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var lux = wallpaper[0].count
    var luy = wallpaper.count
    var rdx = -1
    var rdy = -1
    
    for (y, row) in wallpaper.enumerated() {
        for (x, col) in row.enumerated() {
            if col == "#" {
                lux = min(x, lux)
                luy = min(y, luy)
                rdx = max(x, rdx) 
                rdy = max(y, rdy) 
            }
        
        }
    }
    
    return [luy, lux, rdy + 1, rdx + 1]
}