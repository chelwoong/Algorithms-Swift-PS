//
//  main.swift
//  BOJ_2225
//
//  Created by woong on 07/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine()?.split(separator: " ").map({Int($0)}) {
    let n = input[0] ?? 0
    let k = input[1] ?? 0
    var dp: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: n+1), count: k)
    let mod: Int = 1000000000
    
    for i in 0...n {
        dp[0][i] = 1
    }
    

    for i in 1..<k {
        for j in 0...n {
            for l in 0...j {
                dp[i][j] += dp[i-1][j-l]
                dp[i][j] %= mod
            }
        }
    }
    
    
    print(dp[k-1][n])
}

