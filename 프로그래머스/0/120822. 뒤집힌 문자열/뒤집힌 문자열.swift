import Foundation

func solution(_ my_string:String) -> String {
    let str = my_string.map{ String($0) }
    return str.reversed().joined()
}