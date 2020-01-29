import Foundation

func solution(_ heights:[Int]) -> [Int] {
    var result: [Int] = []
    
    for (i, v) in heights.enumerated().reversed() {
        var finder: Bool = false
        for j in (0..<i).reversed() {
            if heights[j] > v {
                result.append(j+1)
                finder = true
                break
            }
        }
        
        if !finder {
            result.append(0)
        }
    }
    
    return result.reversed()
}
print(solution([6,9,5,7,4]))
print(solution([3,9,9,3,5,7,2]))
print(solution([1,5,3,6,7,6,5]))
