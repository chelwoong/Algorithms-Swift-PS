//
//  main.swift
//  BOJ_11054
//
//  Created by woong on 03/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    
    let a: [Int] = readLine()?.split(separator: " ").map{Int($0) ?? 0} ?? []
    var dpDown: [Int] = [Int](repeating: 1, count: n)
    var dpUp: [Int] = [Int](repeating: 1, count: n)
    var dp: [Int] = [Int](repeating: 0, count: n)
    
    if n > 1 {
        // index i 이하 경우들
        for i in 1..<n {
            for j in 0..<i {
                if (a[i] > a[j]) && dpDown[i] < dpDown[j]+1  {
                    dpDown[i] = dpDown[j] + 1
                }
            }
        }
        
        // index i 이상 경우들
        for i in 2..<n {
            for j in 1..<i {
                if a[n-i] > a[n-j] && dpUp[n-i] < dpUp[n-j]+1 {
                    dpUp[n-i] = dpUp[n-j] + 1
                }
            }
        }
    }
    
    for i in 0..<n {
        dp[i] = dpUp[i] + dpDown[i] - 1
    }
    
    print(dp.max() ?? 1)
}

