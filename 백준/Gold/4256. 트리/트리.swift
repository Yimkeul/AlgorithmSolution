    let T = Int(readLine()!)!
    for _ in 0 ..< T {
        let N = Int(readLine()!)!
        let preorder = readLine()!.split { $0 == " " }.map { Int($0)! }
        let inorder = readLine()!.split { $0 == " " }.map { Int($0)! }
        var answer = [Int]()
        postOrder(0, 0, N, preorder, inorder, &answer)
        _ = answer.map { print($0, terminator: " ")}
        print()
    }
    
    func postOrder(_ root: Int, _ left: Int, _ right: Int, _ pre:[Int], _ _in:[Int], _ answer:inout[Int]) {
        for i in left ..< right {
            if _in[i] == pre[root] {
                postOrder(root + 1, left, i, pre, _in, &answer)
                postOrder(root + 1 + (i - left), i + 1, right, pre, _in, &answer)
                answer.append(pre[root])
            }
        }
        
    }
