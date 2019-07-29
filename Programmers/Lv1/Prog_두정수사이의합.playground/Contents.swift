func solution(_ a:Int, _ b:Int) -> Int64 {
    var result: Int64 = 0
    
    if a >= b {
        for i in b...a {
            result += Int64(i)
        }
    } else {
        for i in a...b {
            result += Int64(i)
        }
    }
    
    return result
}

solution(5, 3)
