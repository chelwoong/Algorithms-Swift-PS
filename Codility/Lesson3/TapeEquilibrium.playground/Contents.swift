import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    var t2 = 0
    
    A.map {
        t2 += $0
    }
    
    var minimum = 1000000000
    
    var t1 = 0
    for i in 0..<A.count-1 {
        t1 += A[i]
        t2 -= A[i]
        print(t1, t2)
        var temp = t2 - t1
        if temp < 0 {
            temp = -temp
        }
        
        if temp < minimum {
            minimum = temp
        }
    }
    
    return minimum
}

var A = [3, 1, 2, 4, 3]
//var A = [-8, 7, 10, -9]

solution(&A)
