import Foundation

// ----- Heap 구현 -----
struct Heap<T: Comparable> {
    private var heap: [T] = []
    private let comparer: (T, T) -> Bool

    init(comparer: @escaping (T, T) -> Bool) {
        self.comparer = comparer
    }

    mutating func insert(data: T) {
        if heap.isEmpty {
            heap.append(data) // dummy 자리
            heap.append(data)
            return
        }
        heap.append(data)
        siftUp(index: heap.count - 1)
    }

    mutating func siftUp(index: Int) {
        var idx = index
        while idx > 1 && comparer(heap[idx], heap[idx / 2]) {
            heap.swapAt(idx, idx / 2)
            idx /= 2
        }
    }

    mutating func pop() -> T? {
        if heap.count < 2 { return nil }
        heap.swapAt(1, heap.count - 1)
        let deleted = heap.popLast()
        if heap.count > 1 { siftDown(index: 1) }
        return deleted
    }

    mutating func siftDown(index: Int) {
        var idx = index
        while true {
            var swapIndex = idx
            let left = idx * 2
            let right = idx * 2 + 1
            if left < heap.endIndex && comparer(heap[left], heap[swapIndex]) {
                swapIndex = left
            }
            if right < heap.endIndex && comparer(heap[right], heap[swapIndex]) {
                swapIndex = right
            }
            if swapIndex == idx { break }
            heap.swapAt(swapIndex, idx)
            idx = swapIndex
        }
    }

    func top() -> T? {
        return heap.count > 1 ? heap[1] : nil
    }
}

// ----- 메인 로직 -----
let T = Int(readLine()!)!
for _ in 0..<T {
    let k = Int(readLine()!)!

    var minHeap = Heap<Int>(comparer: <)
    var maxHeap = Heap<Int>(comparer: >)
    var count: [Int: Int] = [:]

    func cleanTopMax() {
        while let x = maxHeap.top(), (count[x] ?? 0) == 0 {
            _ = maxHeap.pop()
        }
    }
    func cleanTopMin() {
        while let x = minHeap.top(), (count[x] ?? 0) == 0 {
            _ = minHeap.pop()
        }
    }

    for _ in 0..<k {
        let parts = readLine()!.split { $0 == " " }
        let cmd = parts[0]
        let val = Int(parts[1])!

        if cmd == "I" {
            minHeap.insert(data: val)
            maxHeap.insert(data: val)
            count[val, default: 0] += 1
        } else { // D
            if val == 1 {
                cleanTopMax()
                if let x = maxHeap.top() {
                    _ = maxHeap.pop()
                    if let c = count[x], c > 0 { count[x] = c - 1 }
                }
            } else {
                cleanTopMin()
                if let x = minHeap.top() {
                    _ = minHeap.pop()
                    if let c = count[x], c > 0 { count[x] = c - 1 }
                }
            }
        }
    }

    cleanTopMax()
    cleanTopMin()

    if let maxVal = maxHeap.top(), (count[maxVal] ?? 0) > 0,
       let minVal = minHeap.top(), (count[minVal] ?? 0) > 0 {
        print("\(maxVal) \(minVal)")
    } else {
        print("EMPTY")
    }
}
