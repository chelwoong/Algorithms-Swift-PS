//
//  main.swift
//  BOJ_10953
//
//  Created by woong on 18/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

import Foundation

let testCase: Int = Int(readLine()!)!

for _ in 0..<testCase {
    let userInput = readLine()!.components(separatedBy: ",")
    let numA = Int(userInput[0])!
    let numB = Int(userInput[1])!

    print(numA + numB)
}

// 11021

//let testCase: Int = Int(readLine()!)!
//
//for n in 0..<testCase {
//    let userInput = readLine()!.components(separatedBy: " ")
//    let numA = Int(userInput[0])!
//    let numB = Int(userInput[1])!
//
//    print("Case #\(n+1): \(numA + numB)")
//}
