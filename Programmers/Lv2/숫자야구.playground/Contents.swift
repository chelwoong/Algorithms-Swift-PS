import Foundation

func isCheck(number: Int, _ arr: [Int]) -> Bool  {
    var num = number
    var strike = 0
    var ball = 0

    for i in 0...2 {
        let n = num % 10
        num /= 10
        var checkNum = arr[0]
        for j in 0...2 {
            let compareN = checkNum % 10
            checkNum /= 10
            if n == compareN {
                i == j ? (strike += 1) : (ball += 1)
            }
        }
    }
    
    if strike == arr[1], ball == arr[2] {
        return true
    } else {
        return false
    }
}

func solution(_ baseball:[[Int]]) -> Int {
    
    var check: [Bool] = [Bool](repeating: true, count: 1000)
//    var num = 0
    var count = 0
    
    for i in 1...9 {
//        var num = i * 100
        for j in 1...9 {
//            if i == j {continue}
            for k in 1...9 {
                if k == i || k == j {continue}
                let num = i*100 + j*10 + k
                
                for ballArr in baseball {
                    if !isCheck(number: num, ballArr) {
                        check[num] = false
                    }
                }
            }
        }
    }
    
    for i in 123...999 {
        let a = i/100
        let b = (i%100)/10
        let c = (i%100)%10
        
        if a == b || a == c || b == c {continue}
        if a == 0 || b == 0 || c == 0 {continue}
        if check[i] {
//            print(a, b, c, i)
            count += 1
        }
        
    }
    
    return count
}

solution([[123, 1, 1], [356, 1, 0], [327, 2, 0], [489, 0, 1]])
