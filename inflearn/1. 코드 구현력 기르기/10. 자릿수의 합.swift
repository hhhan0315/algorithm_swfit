import Foundation

func solution(_ str: String) {
    let arr = str.components(separatedBy: " ").map {Int($0)!}

    var max = 0
    var result = 0
    
    for num in arr {
        let digit = digit_sum(num)
        if max < digit {
            max = digit
            result = num
        } else if max == digit {
            if result < num {
                result = num
            }
        }
    }
    
    print(result)
}

solution("125 15232 79 1325 97")
// 97
