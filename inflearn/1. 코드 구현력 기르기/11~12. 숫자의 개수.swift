// 처음에 10만까지의 크기는 동작했다.
func solution(_ n: Int) {
    var sum = 0
    for i in 1...n {
        let s = String(i)
        sum += s.count
    }
    
    print(sum)
}

// 100,000,000 범위 증가에서는 너무 오래 걸린다.
func solution(_ n: Int) {
    var sum = 0, c=1, d=9, res=0
    let num = n
    
    while sum+d < n {
        res += c*d
        sum += d
        c+=1
        d*=10
    }
    
    res += (num-sum) * c
    print(res)
}
// 1자리 수 9개
// 2자리 수 90개
// 3자리 수 900개 에서 시작된 수학적 계산
// 시간이 진짜 많이 줄어든다.

solution(87654321)
