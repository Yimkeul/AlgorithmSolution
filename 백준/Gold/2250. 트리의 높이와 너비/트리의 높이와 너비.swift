import Foundation
Q_2250()
func Q_2250() {
    class Node {
        var value: Int
        var left: Int
        var right: Int
        
        init(_ value: Int, _ left: Int, _ right: Int) {
            self.value = value
            self.left = left
            self.right = right
        }
    }

    // 입력받은 데이터로 트리를 생성합니다.
    let n = Int(readLine()!)!
    var tree = [Int: Node]()
    var parent = [Int](repeating: -1, count: n + 1)

    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        let (node, left, right) = (input[0], input[1], input[2])
        tree[node] = Node(node, left, right)
        if left != -1 { parent[left] = node }
        if right != -1 { parent[right] = node }
    }

    // 루트 노드를 찾습니다.
    var root = 1
    for i in 1...n {
        if parent[i] == -1 {
            root = i
            break
        }
    }

    // 중위 순회를 통해 각 노드의 위치를 기록합니다.
    var levelMin = [Int](repeating: Int.max, count: n + 1)
    var levelMax = [Int](repeating: Int.min, count: n + 1)
    var currentX = 1

    func inorder(node: Int, depth: Int) {
        if node == -1 { return }
        
        // 왼쪽 자식 방문
        inorder(node: tree[node]!.left, depth: depth + 1)
        
        // 현재 노드 방문
        levelMin[depth] = min(levelMin[depth], currentX)
        levelMax[depth] = max(levelMax[depth], currentX)
        currentX += 1
        
        // 오른쪽 자식 방문
        inorder(node: tree[node]!.right, depth: depth + 1)
    }

    inorder(node: root, depth: 1)

    // 결과를 계산하고 출력합니다.
    var maxWidth = 0
    var levelWithMaxWidth = 0

    for i in 1...n {
        if levelMin[i] != Int.max {
            let width = levelMax[i] - levelMin[i] + 1
            if width > maxWidth {
                maxWidth = width
                levelWithMaxWidth = i
            }
        }
    }

    print("\(levelWithMaxWidth) \(maxWidth)")

}

