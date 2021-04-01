import Foundation

func solution(_ n: String) {
    var arr = n.components(separatedBy: " ").map {Int($0)!}
    
    for i in 1..<arr.count {
        let temp = arr[i]
        
        for j in stride(from: i-1, through: 0, by: -1) {
            if arr[j] > temp {
                arr.swapAt(j+1, j)
            } else {
                break
            }
        }
        print(arr)
    }
}

solution("11 7 5 6 10 9")
