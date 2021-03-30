import Foundation

func solution(_ str: String) {
    
    let word = str.filter {$0.isLetter}
    let result = word.map {$0.lowercased()}.joined(separator: "")
    print(result)
    // lowercased()가 String이라 joined 사용
    // String(result) : result가 [Character]일 때 가능
}
