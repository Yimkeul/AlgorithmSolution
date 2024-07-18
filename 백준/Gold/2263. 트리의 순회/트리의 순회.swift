let N = Int(readLine()!)!
let inorder = readLine()!.split { $0 == " " }.map { Int($0)! }
let postorder = readLine()!.split { $0 == " " }.map { Int($0)! }

func makePreorder(_ inStart: Int, _ inEnd: Int, _ postStart: Int, _ postEnd: Int) {
    if inStart > inEnd || postStart > postEnd {
        return
    }
    
    let rootVal = postorder[postEnd]
    print(rootVal, terminator: " ")
    
    var rootIndex = 0
    for i in inStart...inEnd {
        if inorder[i] == rootVal {
            rootIndex = i
            break
        }
    }
    
    let leftSize = rootIndex - inStart
    
    makePreorder(inStart, rootIndex - 1, postStart, postStart + leftSize - 1)
    makePreorder(rootIndex + 1, inEnd, postStart + leftSize, postEnd - 1)
}

makePreorder(0, N - 1, 0, N - 1)
