import Foundation

func solution(_ record: [String]) -> [String] {
        var id_name: [String: String] = [:] //id : name
        var id_type: [(id: String, type: String)] = []
        var (type, id, name) = ("", "", "")
        
        var ans = [String]()
        for i in record {
            let input = i.split { $0 == " " }.map { String($0) }
            if input.count > 2 {
                // Enter, Change
                (type, id, name) = (input[0], input[1], input[2])
                id_name[id] = name
            } else {
                // Leave
                (type, id) = (input[0], input[1])
            }
            if type != "Change" {
                id_type.append((id: id, type: type))
            }
            

        }

        for i in 0 ..< id_type.count {
            let name = id_name[id_type[i].id]!
            let ment = id_type[i].type == "Enter" ? "님이 들어왔습니다." : "님이 나갔습니다."
            ans.append(name + ment)
        }
        return ans
    }