import Foundation

//X: 바다, 숫자: 무인도

func solution(_ maps:[String]) -> [Int] {
    //지도를 저장할 배열
    var map = [[Character]]()
    for i in maps{
        map.append(Array(i))
    }
    // print(map)
    
    //행의 최대 idx
    let x_max = map.count - 1
    //열의 최대 idx
    let y_max = map[0].count - 1
    
    //dfs를 사용하기 위해 사용할 visited 배열
    var visited = [[Bool]](repeating: Array(repeating: false, count: y_max + 1 ), count: x_max + 1 )
    
    func dfs(_ x: Int, _ y: Int) -> Int{
        
        //인덱스의 범위를 넘어가면 0리턴
        if x < 0 || y < 0 || x > x_max || y > y_max {
            return 0
        }
        //방문한적 있다면 0리턴
        if visited[x][y] == true {
            return 0
        }
        //X라면 방문처리하고 리턴
        if map[x][y] == "X"{
            visited[x][y] = true
            return 0
        }
        
        //이외 숫자로 이루어지고 방문안한노드라면 방문처리를 하고 더한다.
        visited[x][y] = true
        var tmp = Int(String(map[x][y]))!
        // 상 하 좌 우로만 움직여야 하기 때문에
        return tmp + dfs(x, y+1) + dfs(x, y - 1) + dfs(x + 1, y) + dfs(x - 1, y)
    }
   
    var result = [Int]()
    
    //각 요소를 순환하며 연결된 섬을 모두 살펴본다
    for i in 0...x_max{
        for j in 0...y_max{
            var a = dfs(i, j)
            if a > 0{
                result.append(a)
            }
        }
    }
    
    
    //비었다면 -1 아니라면 오름차순 정렬
    return result == [] ? [-1] : result.sorted(by: <)
    
}