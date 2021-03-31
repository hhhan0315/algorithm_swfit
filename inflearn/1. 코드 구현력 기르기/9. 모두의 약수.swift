import Foundation

func solution(_ n: Int) {
    var arr = Array(repeating: 0, count: n+1)
    
    for i in 1...n {
        var j = i
        while j <= n{
            arr[j]+=1
            j+=i
        }
    }
    
    for i in 1...n {
        print(arr[i], terminator: " ")
    }
}
