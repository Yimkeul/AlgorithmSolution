import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    var suffixAry:[String] = []
    let len = my_string.count
    for i in 0 ..< len {
        suffixAry.append(String(my_string.suffix(len - i)))
    }
    if suffixAry.contains(is_suffix) {
        return 1
    }
    return 0
}