//
//  main.swift
//  BOJ_11057
//
//  Created by woong on 30/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    let l: Int = 10
    var sum: Int = 0
    let mod: Int = 10007
    
    var nums : [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: l), count: n)
    
    for i in 0...9 {
        nums[0][i] = 1
    }
 
    if n > 1 {
        for i in 1...n-1 {
            for j in 0...9 {
                for z in 0...j {
                    nums[i][j] += (nums[i-1][z]) % mod
                }
            }
        }
    }
    
    for i in 0...9 {
        sum += nums[n-1][i]
    }
    print(sum % mod)
}


