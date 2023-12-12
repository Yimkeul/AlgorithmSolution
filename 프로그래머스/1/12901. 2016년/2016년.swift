func solution(_ a:Int, _ b:Int) -> String {
    
    let month:[Int] = [31,29,31,30,31,30,31,31,30,31,30,31]
    
    var temp = 0
    
    for i in 0 ..< a - 1 {
        temp += month[i]
    }
    temp += b
    
    
    let week = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    
    
    
    return week[temp % 7]
}