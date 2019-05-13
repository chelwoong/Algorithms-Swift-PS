//
//  main.swift
//  BOJ_1699
//
//  Created by woong on 04/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
    let n: Int = Int(input) ?? 0
    
    var dp: [Int] = []
    for i in 0...n {
        dp.append(i)
    }
    
    if n > 2 {
        for i in 2...n {
            var j = 2
            while i >= j*j {
                dp[i] = dp[i] < dp[i - (j*j)] + 1 ? dp[i] : dp[i - (j*j)] + 1
                j += 1
            }
        }
    }
    

    print(dp[n])
    
    
}


