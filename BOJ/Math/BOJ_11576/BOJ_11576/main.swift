//
//  main.swift
//  BOJ_11576
//
//  Created by woong on 10/04/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func square(number: Int, power: Int, times: Int) -> Int {
    var result = 1
    for _ in 0..<times {
        result = result * power
    }
    
    return result
}

if let input = readLine()?.components(separatedBy: " ").map({Int($0) ?? 0}) {
    let a = input[0]
    let b = input[1]
    let m: Int
    var result = [Int]()
    
    if let i = readLine() {
        m = Int(i) ?? 0
        
        var decimal = 0
        
        if var numbers = readLine()?.components(separatedBy: " ").map({Int($0) ?? 0}) {
            numbers = numbers.reversed()
            for i in 0..<m {
                decimal += numbers[i] * square(number: numbers[i], power: a , times: i)
            }
        }
        
        if decimal == 0 {
            print(0)
        } else {
            while decimal != 0 {
                result.append(decimal % b)
                decimal /= b
            }

            for output in result.reversed() {
                print(output, terminator: " ")
            }
        }
        
    }
}

