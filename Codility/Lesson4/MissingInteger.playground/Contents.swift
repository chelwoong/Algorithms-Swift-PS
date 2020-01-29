import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    A.sort()
    var result = 1
    
    for i in A {
        if result == i-1 {
            continue
        }
        if result == i {
            result += 1
        }
    }
    
    return result
}

//var a = [1, 3, 6, 4, 1, 2]
//var a = [1, 2, 3]
var a = [-1, -2]
solution(&a)
