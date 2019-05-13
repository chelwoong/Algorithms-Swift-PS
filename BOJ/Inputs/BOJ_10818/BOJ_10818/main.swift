//
//  main.swift
//  BOJ_10818
//
//  Created by woong on 26/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

if let testCase = readLine() {
    let _ = Int(testCase) ?? 0
    if let input = readLine() {
        let inputs = input.split(separator: " ").map{ Int($0) ?? 0}
        print("\(inputs.min() ?? 0) \(inputs.max() ?? 0)")
    }
}

// 다른풀이

//let testCase = Int(readLine()!)!
//let inputs = readLine()!.characters.split {$0 == " "}.map{Int(String($0))!}
//
//var maxN: Int = Int(inputs[0])
//var minN: Int = Int(inputs[0])
//
//for i in 0..<testCase {
//    let num = Int(inputs[i])
//    if num > maxN {
//        maxN = num
//    } else if num < minN {
//        minN = num
//    }
//}
//print("\(String(minN)) \(String(maxN))")


//////// 시간초과
//import Foundation

//let testCase = Int(readLine()!)!
//
//let inputs = readLine()!.components(separatedBy: " ")
//
//var maxN: Int = Int(inputs[0])
//var minN: Int = Int(inputs[0])
//
//for i in 0..<testCase {
//    let num = Int(inputs[i])
//    if num > maxN {
//        maxN = num
//    } else if num < minN {
//        minN = num
//    }
//}
//print("\(String(minN)) \(String(maxN))")
