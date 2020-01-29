import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    
    var leafs = Set<Int>()
    
    for i in A.enumerated() {
        
        if i.element <= X {
            leafs.insert(i.element)
            if leafs.count == X {
                return i.offset
            }
        }
    }
    
    return -1
}

var A = [1, 3, 1, 4, 2, 3, 5, 4]
solution(5, &A)
