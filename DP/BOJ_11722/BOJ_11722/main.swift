//
//  main.swift
//  BOJ_11722
//
//  Created by woong on 03/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    
    let a: [Int] = readLine()?.split(separator: " ").map{Int($0) ?? 0} ?? []
    var dp: [Int] = [Int](repeating: 1, count: n)
    
    if n > 1 {
        for i in 2...n {
            for j in 1..<i {
                if (a[n-i] > a[n-j]) && dp[n-i] < dp[n-j]+1  {
                    dp[n-i] = dp[n-j] + 1
                }
            }
        }
    }
    print(dp.max() ?? 0)
}



