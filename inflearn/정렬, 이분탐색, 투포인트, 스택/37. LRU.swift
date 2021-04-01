import Foundation

func solution(_ s: Int, _ n: String) {
    var memory = Array(repeating: 0, count: s)
    let work = n.components(separatedBy: " ").map {Int($0)!}
    
    for w in work {
        if memory.contains(w) {
            let index = memory.firstIndex(of: w)!
            memory.remove(at: index)
            memory.insert(w, at: 0)
        } else {
            memory.insert(w, at: 0)
            memory.removeLast()
        }
        
    }
    
    print(memory)
}

solution(10, "1 2 3 2 6 2 3 5 7")
