// import Foundation

// func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
//     var dics = [Int:(String,Int)]()
//     var filterdics = [String:[(Int,Int)]]() // idx, plays
//     let len = genres.count
    
//     for i in 0 ..< len {
//         dics[i] = (genres[i], plays[i])
//         filterdics[genres[i], default: []].append((i, plays[i]))
//     }
    
    
    
//     print(dics)
    
//     var temp = filterdics.sorted {
//         $0.map { (idx, _) in idx }.reduce(0,+) > $1.map { (idx, _) in idx }.reduce(0,+)
//         // $0.map { $0[0] }.reduce(0,+) > $1.map { $0[0] }.reduce(0,+)
//     }
//     print(temp)
    

//     return []
// }

import Foundation

func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
    var genreToPlayCount = [String: Int]()
    var genreToSongs = [String: [(Int, Int)]]()
    
    let len = genres.count
    
    for i in 0 ..< len {
        let genre = genres[i]
        let play = plays[i]
        
        genreToPlayCount[genre, default: 0] += play
        genreToSongs[genre, default: []].append((i, play))
    }
    
    // 장르별 총 플레이 수로 정렬
    let sortedGenres = genreToPlayCount.sorted { $0.value > $1.value }
    
    var result = [Int]()
    
    for (genre, _) in sortedGenres {
        // 장르별 노래를 플레이 수로 내림차순 정렬
        let songs = genreToSongs[genre]?.sorted { $0.1 > $1.1 } ?? []
        
        // 상위 2개의 노래를 선택
        for i in 0 ..< min(2, songs.count) {
            result.append(songs[i].0)
        }
    }
    
    return result
}
