import Foundation

func solution(_ n: String) {
    var arr = n.components(separatedBy: " ").map {Int($0)!}
    
    for i in 0..<arr.count-1 {
        for j in 0..<arr.count-1-i {
            if arr[j] > arr[j+1] {
                arr.swapAt(j, j+1)
            }
        }
    }
    
    print(arr)
}

solution("13 23 11 7 5 15")
