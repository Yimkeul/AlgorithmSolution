import Foundation

func solution(_ name:String) -> Int {
    let asciiA = 65
    let asciiZ = 90
    let name = Array(name)
    
    func updown(_ c: Character) -> Int {
        let ascii = Int(c.asciiValue!)
        let up = ascii - asciiA
        let down = asciiZ + 1 - ascii
        return min(up, down)
    }
    
    var result = 0
    for i in 0 ..< name.count {
        result += updown(name[i])
    }
    
    var count = name.count - 1
    for i in 0 ..< name.count {
            var nextIndex = i + 1
            while nextIndex < name.count, name[nextIndex] == "A" {
                nextIndex += 1
            }
            
            let moveRL = i * 2 + name.count - nextIndex
            let moveLR = (name.count - nextIndex) * 2 + i
            count = min(count, moveRL, moveLR)
    }
    
    return result + count
}
