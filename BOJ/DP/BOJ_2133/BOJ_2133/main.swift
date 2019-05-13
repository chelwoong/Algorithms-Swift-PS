//
//  main.swift
//  BOJ_2133
//
//  Created by woong on 07/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    var dp: [Int] = [Int](repeating: 0, count: n+1)
    
    dp[0] = 1
    
    if n > 1 {
        dp[2] = 3   // 3x2의 경우는 3
    }
    
    if n > 2 {
        for i in 3...n {
            if i % 2 == 0 {
                dp[i] += dp[i-2] * dp[2]
                
                if i >= 4 {
                    for j in 4...i {
                        // 2x1 타일을 위 혹은 아래에 채우는 2n 타일들의 고유 경우
                        dp[i] += dp[i-j] * 2
                    }
                }
            }
        }
    }
    
    print(dp[n])
}
