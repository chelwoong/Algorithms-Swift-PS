//
//  main.swift
//  BOJ_ 2156
//
//  Created by woong on 01/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

//func max(_ a: Int, _ b: Int, _ c: Int) -> Int {
//    if a > b {
//        if a > c {
//            return a
//        } else {
//            return c
//        }
//    } else {
//        if b > c {
//            return b
//        } else {
//            return c
//        }
//    }
//}

if let input = readLine() {
    let n = Int(input) ?? 0
    
    var nums: [Int] = [Int](repeating: 0, count: n+1)
    var dp: [Int] = [Int](repeating: 0, count: n+1)
    
    for i in 1..<n+1 {
        if let a = readLine() {
            nums[i] = Int(a) ?? 0
        }
    }
    
    dp[1] = nums[1]
    
    if n > 1 {
        dp[2] = nums[1] + nums[2]
        
        for i in 3..<n+1 {
            dp[i] = max(dp[i-3] + nums[i-1] + nums[i], dp[i-2] + nums[i], dp[i-1])
        }
    }
    
    print(dp[n])
    
    
}

