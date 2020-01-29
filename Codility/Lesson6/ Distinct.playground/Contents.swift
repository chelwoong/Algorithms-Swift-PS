import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)

    let a = Set(A.map{$0})
    
    return a.count
}
