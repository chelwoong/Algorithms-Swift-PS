//
//  main.swift
//  BOJ_2751
//
//  Created by woong on 14/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    
    var dp: [Int] = [Int](repeating: 0, count: n)
    
    for i in 0..<n {
        dp[i] = Int(readLine() ?? "0") ?? 0
    }
    
    dp.sort()
    
    for i in 0..<n {
        print(dp[i])
    }
}

