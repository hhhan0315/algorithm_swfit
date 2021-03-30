import Foundation

func solution(_ str: String) {
    
    let num = str.filter {$0.isNumber}
    let intNum = Int(num)!
    var count = 0
    
    for i in 1...Int(sqrt(Double(intNum))) {
        if intNum % i == 0 {
            count += 2
        }
    }

    print(intNum)
    print(count)
}
