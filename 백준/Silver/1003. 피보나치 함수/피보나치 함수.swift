let num = Int(readLine()!)!
var arr: [(Int,Int)] = [(1,0),(0,1)]

for i in 2...40 {
    arr.append((arr[i-1].0 + arr[i-2].0, arr[i-1].1 + arr[i-2].1))
}

for _ in 1...num {
    let value = arr[Int(readLine()!)!]
    print(value.0, value.1)
}
