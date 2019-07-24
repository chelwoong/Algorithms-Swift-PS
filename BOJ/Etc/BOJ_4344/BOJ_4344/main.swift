//
//  main.swift
//  BOJ_4344
//
//  Created by woong on 22/07/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

if let testcase = readLine(), let t = Int(testcase) {
for _ in 0..<t {
    
    let input: [Int] = readLine()!.split(separator: " ").map({Int($0)!})
    var sum = 0
    var upStudent = 0
    
    for i in 1...input[0] {
        sum += input[i]
    }
//    print("i: \(input[0]), sum: \(sum)")
    let m = sum/input[0]
//    print("m: \(m)")
    for i in 1...input[0] {
        if input[i] > m {
            upStudent += 1
        }
    }
//    print("up: \(upStudent)")
    
    let percent = Double(upStudent)/Double(input[0])*100
    let result = round(percent * 1000) / 1000
//    let result = (percent * 1000).rounded() / 1000
//    print("\(percent)")
    String(format: "%.3f", 40.0)
    print("\(String(format: "%.3f", result))%")
//    print("\(result)%")
}
}
