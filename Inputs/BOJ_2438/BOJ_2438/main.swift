//
//  main.swift
//  BOJ_2438
//
//  Created by woong on 27/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

if let testCase = Int(readLine()!) {
    for i in 1...testCase {
        for _ in 1...i {
            print("*", terminator:"")
        }
        print("")
    }
}

// 다른풀이

//print(String(repeating: "*", count: 5))   // *****

//if let testCase = Int(readLine()!) {
//    Array(1...testCase).forEach { print(String(repeating: "*", count: $0)) }
//}

// 다른풀이 2

//if let testCase = Int(readLine()!) {
//    var star = "*"
//    for _ in 0..<testCase {
//        print(star)
//        star += "*"
//    }
//}
