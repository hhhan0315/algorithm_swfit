func solution(_ n: Int) -> String {
    var result = ""
    var sum = 0
    
    for i in 1..<n {
        if n%i == 0 {
            sum += i
            result += String(i) + "+"
        }
    }
    result.removeLast()
    result += "=" + String(sum)
    
    return result
}
