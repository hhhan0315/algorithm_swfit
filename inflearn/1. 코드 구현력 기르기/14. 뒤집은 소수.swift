import Foundation

func solution(_ n: String) {
    let arr = n.components(separatedBy: " ")
    
    for s in arr {
        let reversed = String(s.reversed())
        let num = Int(reversed)!
        if isPrime(num) {
            print(num)
        }
    }
}

func isPrime(_ x:Int) -> Bool {
    if x == 1 {
        return false
    }
    
    for i in 2..<x {
        if x % i == 0 {
            return false
        }
    }
    return true
}
