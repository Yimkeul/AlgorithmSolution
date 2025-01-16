import Foundation

func solution(_ skill: String, _ skill_trees: [String]) -> Int {

        var stack = [String]()
        var ans = 0
        let StringSkill = skill.map { String($0) }
        
        for sk in skill_trees {
            var check = true
            let s = sk.map { String($0) }
            for i in s {
                if skill.contains(i) {
                    stack.append(i)
                }
            }
            
            for i in 0 ..< stack.count {
                if stack[i] != StringSkill[i] {
                    check = false
                }
            }
            ans += check ? 1 : 0
            stack = []
        }


        return ans
    }