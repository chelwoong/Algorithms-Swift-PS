//
//  main.swift
//  BOJ_ 11053
//
//  Created by woong on 02/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    let a: [Int] = (readLine()?.split(separator: " ").map{ Int($0) ?? 0 }) ?? []
    var dp: [Int] = [Int](repeating: 1, count: n)

    for i in 1..<n {
        for j in 0..<i {
            if a[i] > a[j] {
                dp[i] = dp[i] > (dp[j]+1) ? dp[i] : (dp[j] + 1)
            }
        }
    }
    
    print(dp.max() ?? 0)
    
}
