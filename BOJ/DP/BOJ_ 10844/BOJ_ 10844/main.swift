//
//  main.swift
//  BOJ_ 10844
//
//  Created by woong on 30/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

// 0
// 1, 9
// 2~8

// n = 2, 1, 9, 0 = 1 / 2~8: 2



if let input = readLine() {
    let n = Int(input) ?? 0
    let l: Int = 9
    var sum: Int = 0
    var dp: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: l+1), count: n)
    
    // n = 1일때 마지막 자리 채우기
    print("dp[0][0] = \(dp[0][0])")
    for i in 1...9 {
        dp[0][i] = 1
        print("dp[0][\(i)] = \(dp[0][i])")
        
    }
    
    if n > 1 {
        for i in 1...n-1 {
            dp[i][0] = (dp[i-1][1]) % 1000000000
            print("dp[\(i)][0] = \(dp[i][0])")
            for j in 1...8 {
               dp[i][j] = (dp[i-1][j-1] + dp[i-1][j+1]) % 1000000000
                print("dp[\(i)][\(j)] = \(dp[i][j])")
            }
            dp[i][9] = (dp[i-1][8]) % 1000000000
            print("dp[\(i)][9] = \(dp[i][9])")
        }
    }
    
    for i in 0...9 {
        sum += dp[n-1][i]
    }
    
    print(sum)
}
