//
//  main.swift
//  BOJ_10989
//
//  Created by woong on 15/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let n = Int(readLine() ?? "0") {
    
    var nums: [Int] = []
    
    for _ in 0..<n {
        let a = readLine() ?? "0"
        nums.append(Int(a) ?? 0)
    }
    
    nums.sort(by: {$0 < $1})
    
    for i in 0..<n {
        print(nums[i])
    }
}

