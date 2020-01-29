import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    if A.count < 2 {return 0}
    
    A.sort()
    
    for i in 0..<A.count-2 {
        if A[i] + A[i+1] <= A[i+2] {continue}
        if A[i+1] + A[i+2] <= A[i] {continue}
        if A[i+2] + A[i] <= A[i+1] {continue}
        return 1
    }
    
    return 0
}
