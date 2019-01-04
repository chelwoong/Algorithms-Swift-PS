//
//  main.swift
//  BOJ_1912
//
//  Created by woong on 03/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
    let n: Int = Int(input) ?? 0
    let a: [Int] = readLine()?.split(separator: " ").map{ Int($0) ?? 0} ?? []
    var dp: [Int] = [Int](repeating: 0, count: n)
    
    dp[0] = a[0]
    
    for i in 1..<n {
        dp[i] = a[i] > dp[i-1] + a[i] ? a[i] : dp[i-1] + a[i]
    }
    
    print(dp.max() ?? 0)
}
