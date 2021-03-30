import Foundation

func solution(_ str: String) {
    var count = 0
    
    for c in str {
        if c == "(" {
            count += 1
        } else if c == ")" {
            count -= 1
        }
        
        if count < 0 {
            break
        }
    }

    if count == 0 {
        print("YES")
    } else {
        print("NO")
    }
}
