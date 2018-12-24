
//  main.swift
//  BOJ_11721
//
//  Created by woong on 18/12/2018.
//  Copyright © 2018 woong. All rights reserved.


import Foundation

// 풀이 1

let testCase: String = readLine()!

var idx: Int = 0

while idx+10 < testCase.count {
    let startIdx = testCase.index(testCase.startIndex, offsetBy: idx)
    let endIdx = testCase.index(testCase.startIndex, offsetBy: idx+10)

    let range = startIdx ..< endIdx
    print(testCase.substring(with: range))

    idx += 10
}

var startIdx = testCase.index(testCase.startIndex, offsetBy: idx)
var endIdx = testCase.endIndex

let range = startIdx ..< endIdx
print(testCase.substring(with: range))

//  풀이 2

//let testCase: String = readLine()!
//
//var output: String = ""
//
//for var i in testCase.enumerated() {
//    if output.count == 10 {
//        print(output)
//        output = ""
//        output.append(i.element)
//    } else if i.offset + 1 == testCase.count {
//        output.append(i.element)
//        print(output)
//        output=""
//    } else {
//        output.append(i.element)
//    }
//}









