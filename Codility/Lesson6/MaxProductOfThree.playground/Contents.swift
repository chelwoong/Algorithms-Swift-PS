import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    
    A.sort()
    
    let maxWithMinus = A[0] * A[1] * A[A.count-1]
    let max = A[A.count-1] * A[A.count-2] * A[A.count-3]
    
    if maxWithMinus > max {
        return maxWithMinus
    } else {
        return max
    }
}
