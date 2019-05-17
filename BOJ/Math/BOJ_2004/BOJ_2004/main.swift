//
//  main.swift
//  BOJ_2004
//
//  Created by woong on 17/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

// 조합의 0의 개수

func getCountOfNumber(target: Int, number: Int) -> Int {
    var target = target
    let n = number
    var count = 0
    
    while target > 0 {
        count += target / n
        target /= n
    }
    
    return count
}

if let input = readLine()?.components(separatedBy: " ").map({Int($0) ?? 0}) {
    let a = input[0]
    let b = input[1]
    
    let five = getCountOfNumber(target: a, number: 5) - getCountOfNumber(target: b, number: 5) - getCountOfNumber(target: (a-b), number: 5)
    let two = getCountOfNumber(target: a, number: 2) - getCountOfNumber(target: b, number: 2) - getCountOfNumber(target: (a-b), number: 2)
    
//    print("two: \(two), five: \(five)")
    
    if five > 0 && two > 0 {
        two >= five ? print(five) : print(two)
    } else {
        print(0)
    }
    
}

