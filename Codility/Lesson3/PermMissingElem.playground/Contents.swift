import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    var result = [Bool](repeating: true, count: A.count+2)
    
    A.map {
        result[$0] = false
    }
    
    for i in 1..<result.count {
        if result[i] {
            return i
        }
    }
    
    return -1
}

var a = [2, 3, 1, 5]
solution(&a)
