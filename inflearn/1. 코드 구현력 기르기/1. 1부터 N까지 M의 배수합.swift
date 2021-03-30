func solution(_ n: Int, _ m: Int) -> Int {
    var sum = 0
    for i in 1...n {
        if i%m == 0 {
            sum += i
        }
    }
    return sum
}
