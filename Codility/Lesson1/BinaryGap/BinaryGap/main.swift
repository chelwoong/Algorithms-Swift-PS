//
//  main.swift
//  BinaryGap
//
//  Created by woong on 23/04/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    var n = N
    var binaries = [Int]()
    var maxGap = 0
    var gap = 0
    var oneCount = false
    
    while n > 0 {
        let bin = n%2
        binaries.append(bin)
        n /= 2
        
        if bin == 1 {
            if oneCount == false {
                oneCount = true
            }
            if gap > maxGap && oneCount {
                maxGap = gap
            }
            gap = 0
        } else if bin == 0 && oneCount {
            gap += 1
        }
    }
    
    print(binaries)
    print(maxGap)
    return 0
}

print(solution(15))
