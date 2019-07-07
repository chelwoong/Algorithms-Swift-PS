//
//  main.swift
//  BOJ_15552
//
//  Created by woong on 02/07/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

var max = -1
var idx = -1
for i in 1...9 {
    let num = Int(readLine()!)!
    if num > max {
        max = num
        idx = i
    }
}
print(max)
print(idx)

