func solution(_ x:Int) -> Bool {
    var trans = String(x)
    var sum = 0
    for char in trans {
        sum += Int(String(char))!
    }
    return x % sum == 0 ? true : false
}