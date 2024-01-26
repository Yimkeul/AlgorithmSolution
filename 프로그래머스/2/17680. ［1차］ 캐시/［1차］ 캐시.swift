func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    // 소문자화
    let cities = cities.map{$0.lowercased()}
    var cache: [String] = Array(repeating: "", count : cacheSize)
    
    var time: Int = 0
    // 캐시사이즈 0인 경우 예외처리
    if cacheSize == 0 {
        return cities.count * 5
    }
    for data in cities {
        if cache.contains(data) {
            // 캐시에 있는 경우 해당 인덱스를 pop 하고 cache에 푸쉬
            guard let index = cache.firstIndex(of: data) else {
                continue
            }
            cache.remove(at: index)
            cache.append(data)
            time += 1
        } else {
            // 캐시에 없는 경우 가장 하단 인덱스 pop 하고 cache에 푸쉬
            if cache.isEmpty {
                cache.append(data)    
            } else {
                cache.removeFirst()    
                cache.append(data)
            }
            time += 5           
        }
    }
    
    return time
}