//
//  main.swift
//  BOJ_2331
//
//  Created by woong on 23/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

func solution() {
    guard let input = readLine()?.split(separator: " ") else { return }
    let a = input[0]
    let p = Int(input[1])!
    let max = 236196

    var next = 0
    var visited = [Bool](repeating: false, count: max+1)
    var counts = [Int](repeating: 1, count: max+1)

    func repeatSequence(A a: String) {
        var result = 0
        for i in a {
            if let n = Int(String(i)) {
                result += n.square(power: p)
            }
        }

        if !visited[result] {
            visited[result] = true
            counts[result] += counts[Int(a)!]
//            print("A: \(a): result: \(result), count: \(counts[result])")
            repeatSequence(A: String(result))
        } else {
//            print("A: \(a): result: \(result), count: \(counts[result])")
            print(counts[result]-1)
            return
        }
    }

    visited[Int(String(a))!] = true
    repeatSequence(A: String(a))
    
}

extension Int {
    func square(power times: Int) -> Int {
        var result = 1
        for _ in 0..<times {
            result *= self
        }
        
        return result
    }
}

solution()

