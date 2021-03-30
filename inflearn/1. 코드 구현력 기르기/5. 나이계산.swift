import Foundation

func solution(_ str: String) -> String {
    let num = str.components(separatedBy: "-")
    let ageFirstIndex = num[0].index(after: num[0].startIndex)
    let ageFirst = num[0][num[0].startIndex...ageFirstIndex]
    let genderFirst = num[1].first!
    var age = 0
    var gender = ""
    var result = ""
    
    switch genderFirst {
    case "1":
        gender = "M"
        age = 1900
    case "2":
        gender = "W"
        age = 1900
    case "3":
        gender = "M"
        age = 2000
    case "4":
        gender = "W"
        age = 2000
    default:
        break
    }
    
    age += Int(ageFirst)!
    age = 2019 - age + 1
    result = "\(age) \(gender)"
    
    return result
}
