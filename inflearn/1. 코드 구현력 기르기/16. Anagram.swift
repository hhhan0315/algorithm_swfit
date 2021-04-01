import Foundation

func solution(_ a: String, _ b: String) {
    var arr = Array(repeating: 0, count: 68)
    var arr2 = Array(repeating: 0, count: 68)
    for c in a {
        let i = c.asciiValue!
        arr[Int(i) - 65] += 1
    }
    
    for c in b {
        let i = c.asciiValue!
        arr2[Int(i) - 65] += 1
    }
    
    if arr == arr2 {
        print("YES")
    } else {
        print("NO")
    }
}

solution("AbaAeCe", "baeeACA")
