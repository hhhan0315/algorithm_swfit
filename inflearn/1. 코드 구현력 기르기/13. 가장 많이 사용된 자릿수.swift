import Foundation

func solution(_ n: String) {
    var arr = Array(repeating: 0, count: 10)
    let strArr = n.map {String($0)}

    for c in strArr {
        arr[Int(c)!] += 1
    }
    
    var digit = 0
    var result = 0
    for i in arr.indices {
        if arr[i] >= digit {
            digit = arr[i]
            result = i
        }
    }
    
    print(result)
}


solution("8323382318238312823182338132812832381238283282832828312823828312812823823138282812821832828282")
