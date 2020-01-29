import Foundation

// correctness = 100% performance = 25%
//public func solution(_ A : inout [Int]) -> Int {
//
//    var result: [Int] = []
//
//
//    for i in A {
//
//        if let idx = result.firstIndex(of: i) {
//            result.remove(at: idx)
//        } else {
//            result.append(i)
//        }
//    }
//
//    return result[0]
//}


// 100%
public func solution(_ A : inout [Int]) -> Int {
    
    var dicN: [Int: Bool] = [:]
    
    
    for i in A {
        dicN[i] ?? false ? (dicN[i] = false) : (dicN[i] = true)
    }
    
    for (i, v) in dicN {
        if v {
            return i
        }
    }
    
    return -1
}

var A = [9, 3, 9, 3, 9, 7, 9]

solution(&A)
