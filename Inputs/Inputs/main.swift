//
//  main.swift
//  Inputs
//
//  Created by woong on 12/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

import Foundation

// main

// Questions

//        10950

let input: Int = Int(readLine()!)!

var sum: [Int] = []

for n in 0..<input {
    let a = readLine()
    
    if (a != nil) {
//        print(a!)
        var array = a!.components(separatedBy: " ")
//        print(sum[n])
        print(Int(array[0])! + Int(array[1])!)
//        sum[n] = Int(array[0])! + Int(array[1])!
    }
    
}
//for n in sum {
//    print(n)
//}



// 2558
//
//    let a = readLine()
//    let b = readLine()
//
//    if let a = a, let b = b {
//
//        print(Int(a)! + Int(b)!)
//    }


// 1000
//    let input = readLine()
//    if let a = input {
//        var array = a.components(separatedBy: " ")
//        let sum = Int(array[0])! + Int(array[1])!
//        print(sum)
//    }


