import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    
    var counter = [Int](repeating: 0, count: N)
    var max = 0
    var isMax = false
    
    for a in A {
//        print("key: \(a)")
        if a == N+1 {
            if isMax {continue}
            counter = [Int](repeating: max, count: N)
//            print("isMax, ", counter)
            isMax = true
            
        } else {
//            print(counter)
            counter[a-1] += 1
            if counter[a-1] > max {
                max = counter[a-1]
                isMax = false
            }
        }
    }
    
    return counter
}

var a = [3, 4, 4, 6, 1, 4, 4, 6, 6, 3]
solution(5, &a)
