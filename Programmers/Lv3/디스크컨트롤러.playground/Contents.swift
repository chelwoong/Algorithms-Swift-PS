import Foundation

func makeTotal(_ arr: [[Int]]) -> Int {
    var task = 0
    var total = 0
    
    for a in arr {
        task += a[1]
        total += task - a[0]
    }
    
    return total
}

func solution(_ jobs:[[Int]]) -> Int {
    
    var task = 0
    var total = 0
    
    let sortedJobs = jobs.sorted { (a, b) -> Bool in
        if a[1] < b[1] {
            return true
        } else if a[1] == b[1] {
            if a[0] < b[0] {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    
    sortedJobs.compactMap {
        if $0[0] <= task {
            task += $0[1]
            total += task - $0[0]
        }
    }
    
    let result = total / sortedJobs.count
    return result
}

solution([[0, 3], [2, 6], [1, 9]])
//solution([[0, 3], [2, 6], [1, 9]])
