//
//  main.swift
//  BOJ_11055
//
//  Created by woong on 03/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    
    let a: [Int] = readLine()?.split(separator: " ").map{Int($0) ?? 0} ?? []
    var dp: [Int] = a
    
    for i in 0..<n {
        for j in 0..<i {
            if (a[i] > a[j]) && dp[j] + a[i] > dp[i]  {
                dp[i] = dp[j] + a[i]
            }
        }
    }
    
    print(dp.max() ?? 0)
}

