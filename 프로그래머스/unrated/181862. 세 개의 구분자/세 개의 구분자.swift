import Foundation

func solution(_ myStr:String) -> [String] {
    return myStr.components(separatedBy: ["a", "b", "c"]).filter { !$0.isEmpty }.isEmpty ?
    ["EMPTY"]  : myStr.components(separatedBy: ["a", "b", "c"]).filter { !$0.isEmpty }
}