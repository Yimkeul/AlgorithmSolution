func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var cache = [String]()
    var time = 0
    
    if cacheSize == 0 {
        return cities.count * 5
    }
    
    for city in cities {
        var setting = city.lowercased()
        
        if cache.count < cacheSize {
            if cache.contains(setting) {
                time += 1
            } else {
                
                time += 5    
            }
            cache.append(setting)
        } else {
            if cache.contains(setting) {
                time += 1
                if let firstIndex = cache.firstIndex(of: setting) {
                    cache.remove(at: firstIndex)
                    cache.append(setting)
                }
            } else {
                cache.removeFirst()
                cache.append(setting)
                time += 5
            }
        }
    }
    
    
    return time
}