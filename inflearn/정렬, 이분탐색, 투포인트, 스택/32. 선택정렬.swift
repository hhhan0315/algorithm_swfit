import Foundation

func solution(_ n: String) {
    var arr = n.components(separatedBy: " ").map {Int($0)!}
    
    for i in 0..<arr.count {
        var min = arr[i]
        var location = i
        
        for j in i+1..<arr.count {
            if arr[j] < min {
                min = arr[j]
                location = j
            }
        }
        
        arr.swapAt(i, location)
    }
    
    print(arr)
}

solution("13 5 11 7 23 15")
