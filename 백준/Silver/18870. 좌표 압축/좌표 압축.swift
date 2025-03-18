    let _ = Int(readLine()!)!
    let input = readLine()!.split { $0 == " "}.map { Int($0)! }
    
    let setArray = Set(input).sorted { $0 < $1 }
    var dictionary = [Int:Int]()
    
    for (index, value) in setArray.enumerated() {
        if dictionary[value] == nil {
            dictionary[value] = index
        }
    }
    
    for i in input {
//        guard let data = dictionary.first(where: { (key: Int, value: Int) in
//            i == value
//        }) else {
//            continue
//        }
//        print(data.key, terminator: " ")
        print(dictionary[i]!, terminator: " " )
    }