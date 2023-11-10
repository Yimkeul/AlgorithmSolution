func solution(_ code: String) -> String {
    let characters = Array(code)
    let len = characters.count
    var ret = ""
    var mode = "0"

    for i in 0 ..< len {
        let target = characters[i]

        if mode == "0" {
            if target == "1" {
                mode = "1"
            } else {
                if i % 2 == 0 {
                    ret.append(target)
                }
            }
        } else {
            if target == "1" {
                mode = "0"
            } else {
                if i % 2 == 1 {
                    ret.append(target)
                }
            }
        }
    }

    if ret.isEmpty {
        return "EMPTY"
    }
    return ret
}
