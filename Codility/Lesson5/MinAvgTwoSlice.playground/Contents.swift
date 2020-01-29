import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    var minimum: Double = 10001
    var minIndex = -1
    
    for i in 0..<A.count {
        
        if i+1 < A.count {
            let average = Double(A[i] + A[i+1]) / 2
            if average < minimum {
                minimum = average
                minIndex = i
//                print("2개", i, minimum)
            }
        }
        
        if i+2 < A.count {
            let average = Double(A[i] + A[i+1] + A[i+2]) / 3
            if average < minimum {
                minimum = average
                minIndex = i
//                print("3개", i, minimum)
            }
        }
    }
    
    
    return minIndex
}

var a = [4, 2, 2, 5, 1, 5, 8]

solution(&a)
