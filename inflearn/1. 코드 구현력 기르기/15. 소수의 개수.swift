import Foundation

func solution(_ n: Int) {
    var count = 0
    
    for num in 2...n {
        var check = true
        for i in 2..<Int(sqrt(Double(num)))+1 {
            if num % i == 0 {
                check = false
                break
            }
        }
        
        if check {
            count += 1
        }
    }
    
    print(count)
}

solution(20)
