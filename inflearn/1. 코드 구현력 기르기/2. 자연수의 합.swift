func solution(_ a: Int, _ b: Int) -> String {
    var sum = 0
    var result = ""
    
    for i in a...b {
        sum += i
        result += String(i)+"+"
    }
    result.removeLast()
    result.append("=")
    result.append(String(sum))
    
    return result
}
