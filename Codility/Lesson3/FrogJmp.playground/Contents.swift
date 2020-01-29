import Foundation
//import Glibc

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    if (Y-X) % D == 0 {
        return (Y-X)/D
    } else {
        return (Y-X)/D + 1
    }
}

solution(10, 85, 30)
