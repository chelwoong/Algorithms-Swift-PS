import Foundation

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    
    var result = [Int](repeating: 0, count: A.count)
    A.enumerated().map {
        result[($0.offset+K) % A.count] = $0.element
    }

    return result
}

var a = [3, 8, 9, 7, 6]
solution(&a, 3) // [9, 7, 6, 3, 8]
