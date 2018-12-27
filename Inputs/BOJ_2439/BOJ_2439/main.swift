//
//  main.swift
//  BOJ_2439
//
//  Created by woong on 27/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

if let input = Int(readLine()!) {
    var star = ""

    for i in 1...input {
        var space = ""
        for _ in i..<input {
            space += " "
        }
        star += "*"
        print("\(space)\(star)")
    }
}

// 다른풀이
//
//if let input = Int(readLine()!) {
//    Array(0..<input).reversed().forEach({
//        print(String(repeating: " ", count: $0), terminator: "")
//        print(String(repeating: "*", count: input-$0))
//    })
//}

