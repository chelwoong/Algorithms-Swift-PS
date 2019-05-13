//
//  main.swift
//  BOJ_2011
//
//  Created by woong on 10/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
//    let n: [Int] = Array(input).map { (c) -> Int in
//        Int(String(c)) ?? 0
//    }
    let n: [Int] = Array(input).map { Int(String($0)) ?? 0 }
    var dp: [Int] = [Int](repeating: 0, count: n.count)
    let mod: Int = 1000000
    
    if n[0] == 0 {
        print(0)
    } else {
        dp[0] = 1
        for i in 1..<n.count {
            if n[i] > 0 {
                dp[i] += dp[i-1] % mod
            }
            let doubleNum: Int = n[i-1]*10 + n[i]
            if (doubleNum >= 10) && (doubleNum <= 26) {
                if i > 1 {
                    dp[i] = (dp[i] + dp[i-2]) % mod
                } else {
                    dp[i] = dp[i] + 1
                }
            }
        }
        print(dp[n.count-1])
    }
}

