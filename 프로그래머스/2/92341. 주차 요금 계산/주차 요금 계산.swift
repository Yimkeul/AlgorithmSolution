import Foundation

struct History {
        let number: String
        var InTime: String
        var OutTime: String = timeInvert("23:59")
    }

    struct FeeHistory {
        let number: String
        var usingTime: Int
        var fee: Int = 0
    }

    func solution(_ fees: [Int], _ records: [String]) -> [Int] {
        var list: [History] = []
        var feeList: [FeeHistory] = []
        var ans:[Int] = []
        
        let (baseTime, baseFee, unitTime, unitFee) = (fees[0], fees[1], fees[2], fees[3])


        for record in records {
            let data = record.split { $0 == " " }.map { String($0) }
            let (time, car, type) = (timeInvert(data[0]), data[1], data[2])

            switch type {
            case "IN":
                list.append(History(number: car, InTime: time))
            case "OUT":
                if let index = list.firstIndex(where: { $0.number == car && $0.OutTime == timeInvert("23:59") }) {
                    list[index].OutTime = time
                }
            default:
                break
            }
        }

        for record in list {
            let (car, inTime, outTime) = (record.number, record.InTime, record.OutTime)
            let time = Int(outTime)! - Int(inTime)!

            if let index = feeList.firstIndex(where: { $0.number == car }) {
                feeList[index].usingTime += time
            } else {
                feeList.append(FeeHistory(number: car, usingTime: time))
            }
        }


        for item in feeList {
            let time = item.usingTime
            let fee = time > baseTime ? baseFee + Int(ceil(Double(time - baseTime) / Double(unitTime))) * unitFee: baseFee

            if let index = feeList.firstIndex(where: { $0.number == item.number }) {
                feeList[index].fee = fee
            }
        }
        
        feeList.sort { $0.number < $1.number}

        for item in feeList {
            ans.append(item.fee)
        }

        return ans
    }


    func timeInvert(_ data: String) -> String {
        let data = data.split { $0 == ":" }.map { Int($0)! }
        return String(data[0] * 60 + data[1])
    }
