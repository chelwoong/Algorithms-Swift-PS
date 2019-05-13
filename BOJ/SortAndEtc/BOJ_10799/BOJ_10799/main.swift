//
//  main.swift
//  BOJ_10799
//
//  Created by woong on 23/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

let n = Array(readLine() ?? "")

var result = 0
var stack: [Character] = []

for i in 0..<n.count {
    if n[i] == "(" {
        stack.append(n[i])
//        print("\(stack), \(result)")
    } else {
        stack.popLast()
        if n[i-1] == "(" {
            result += stack.count
//            print("\(stack), \(result)")
        } else {
            result += 1
//            print("\(stack), \(result)")
        }
    }
}
print(result)
