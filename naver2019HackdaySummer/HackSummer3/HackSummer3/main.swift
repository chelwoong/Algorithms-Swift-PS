//
//  main.swift
//  HackSummer3
//
//  Created by woong on 13/04/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ T : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    let t = T
    let min = t[0]
    var isWinter = true
    var partition = 1
    
    for i in 1..<t.count {
        if isWinter && min < t[i] {
            partition = i
            isWinter = false
        }
        
        if !isWinter && min >= t[i] {
            partition = i
            isWinter = true
        }
    }
    
    if isWinter {
        partition = t.count
    }
    
    return partition
}
