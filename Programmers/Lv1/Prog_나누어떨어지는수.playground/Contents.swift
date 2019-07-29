func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    
    var result = arr.filter { $0 % divisor == 0}
    result.sort(by: <)
    
    if result.count == 0 {
        result.append(-1)
    }
    return result
}

print(solution([5, 9, 7, 10], 5))
print(solution([2, 36, 1, 3], 1))
print(solution([3, 2, 6], 10))
