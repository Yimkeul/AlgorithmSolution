import Foundation
func Q_1094() {
    if let input = readLine(), let X = Int(input) {
        var count = 0
        var value = X
        while value > 0 {
            if value % 2 == 1 {
                count += 1
            }
            value /= 2
        }
        print(count)
    }
}
Q_1094()