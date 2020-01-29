import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    if A == 0 {
        return B/K + 1
    } else {
        return B/K - (A-1)/K
    }
}

var a = 0
var b = 2000000
var k = 1
solution(a, b, k)
