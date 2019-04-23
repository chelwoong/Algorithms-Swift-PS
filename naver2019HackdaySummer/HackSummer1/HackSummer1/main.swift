//
//  main.swift
//  HackSummer1
//
//  Created by woong on 13/04/2019.
//  Copyright © 2019 woong. All rights reserved.
//


import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    var faces = Array(repeating: 0, count: 6)
    var minNumbers = Array(repeating: 0, count: 6)
    
    for i in A {
        faces[i-1] += 1
    }
    
    for i in 0..<6 {
        let opposit = 6-i-1
        var count = 0
        for j in 0..<6 {
            if j == i {
                continue
            } else if j == opposit {
                count += faces[j] * 2
            } else {
                count += faces[j]
            }
        }
        minNumbers[i] = count
    }
    guard let minimum = minNumbers.min() else { return 0}
    return minimum
}

var array = [1, 1, 6]
print(solution(&array))
