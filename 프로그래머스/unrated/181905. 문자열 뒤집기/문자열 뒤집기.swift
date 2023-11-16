import Foundation

func solution(_ my_string:String, _ s:Int, _ e:Int) -> String {
    var result = Array(my_string)

    for i in s...(s + e) / 2 {
        let endIndex = e - (i - s)
        let temp = result[i]
        result[i] = result[endIndex]
        result[endIndex] = temp
    }

    return String(result)
}