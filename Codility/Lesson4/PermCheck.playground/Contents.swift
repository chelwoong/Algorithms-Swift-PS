import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    
    A.sort()
    
    for i in 1...A.count {
        if i != A[i-1] {
            return 0
        }
    }
    return 1
}

var A = [5, 4, 1, 2, 3]
//var A = [1, 1]

solution(&A)
