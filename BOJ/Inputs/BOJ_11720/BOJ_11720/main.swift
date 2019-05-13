//
//  main.swift
//  BOJ_11720
//
//  Created by woong on 18/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

import Foundation

let testCase = Int(readLine()!)

if let inputNums = readLine() {
//    inputNums.components(separatedBy: "")
    
    var sum: Int = 0
    for i in inputNums {
        
        sum += Int(String(i))!
    }
    print(sum)
    
}
