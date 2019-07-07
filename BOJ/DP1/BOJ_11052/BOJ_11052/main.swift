//
//  main.swift
//  BOJ_11052
//
//  Created by woong on 13/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

//    for i=1 ; i<=n ; i++ {
//        for j=1 ; j<= i ; j++ {
//            dp[i] = (dp[i], dp[i-j] + a[j]).max
//        }
//    }

if let input = readLine() {
    let n: Int = Int(input) ?? 0
    let a: [Int] = readLine()?.split(separator: " ").map{ Int($0) ?? 0 } ?? []
    var dp: [Int] = [Int](repeating: 0, count: n+1)
    
    for i in 1...n {
        for j in 1...i {
            dp[i] = max(dp[i], dp[i-j] + a[j-1])
        }
    }
    
    print(dp[n])
}
