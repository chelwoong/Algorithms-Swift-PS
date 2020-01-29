import Foundation
//import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

func haveMin(array arr: [Int], from: Int, to: Int) -> Bool {
    let min = arr[from]
    let max = arr[to+1]
    
    if max - min > 0 {
        return true
    } else {
        return false
    }
    
    for i in from+1...to+1 {
        if arr[i] > flag {
            return true
        }
    }
    
    return false
}

public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
    
    var result = [Int]()

    var a = [0]
    var c = [0]
    var g = [0]
    
    for (i, s) in S.enumerated() {
        switch s {
        case "A":
            a.append(a[i]+1)
            c.append(c[i])
            g.append(g[i])
        case "C":
            a.append(a[i])
            c.append(c[i]+1)
            g.append(g[i])
        case "G":
            a.append(a[i])
            c.append(c[i])
            g.append(g[i]+1)
        default:
            a.append(a[i])
            c.append(c[i])
            g.append(g[i])
        }
    }
    
    for i in 0..<P.count {
        if haveMin(array: a, from: P[i], to: Q[i]) {
            result.append(1)
        } else if haveMin(array: c, from: P[i], to: Q[i]) {
            result.append(2)
        } else if haveMin(array: g, from: P[i], to: Q[i]) {
            result.append(3)
        } else {
            result.append(4)
        }
    }
    
    return result
}

var s = "CAGCCTA"
var p = [2, 5, 0]
var q = [4, 5, 6]

print(solution(&s, &p, &q))
