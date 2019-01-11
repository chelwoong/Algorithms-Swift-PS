//
//  main.swift
//  BOJ_9461
//
//  Created by woong on 07/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
    let testCase = Int(input) ?? 0
    
    for _ in 0..<testCase {
        let n = Int(readLine()!)!
        
        var dp: [Int] = [1, 1, 1, 2, 2, 3]
        
        if n > 5 {
            for i in 6..<n {
                dp.append(dp[i-1] + dp[i-5])
            }
        }
        
        print(dp[n-1])
    }
}

