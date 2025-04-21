import Foundation

func solution(_ users:[[Int]], _ emoticons:[Int]) -> [Int] {
        var answer = [0, 0] 
        let discounts = [10, 20, 30, 40]
        var discountCases = [[Int]]()
        
        func dfs(_ current: [Int]) {
            if current.count == emoticons.count {
                discountCases.append(current)
                return
            }
            
            for d in discounts {
                dfs(current + [d])
            }
        }
        
        dfs([])

        for discountCase in discountCases {
            var plusUsers = 0
            var totalRevenue = 0
            
            for user in users {
                let (minDiscount, maxPay) = (user[0], user[1])
                var cost = 0
                
                // 이 유저가 구매하는 금액 계산
                for i in 0..<emoticons.count {
                    if discountCase[i] >= minDiscount {
                        let discountedPrice = emoticons[i] * (100 - discountCase[i]) / 100
                        cost += discountedPrice
                    }
                }
                
                if cost >= maxPay {
                    plusUsers += 1
                } else {
                    totalRevenue += cost
                }
            }
            
            if plusUsers > answer[0] {
                answer = [plusUsers, totalRevenue]
            } else if plusUsers == answer[0] {
                answer[1] = max(answer[1], totalRevenue)
            }
        }
        
        return answer
}

