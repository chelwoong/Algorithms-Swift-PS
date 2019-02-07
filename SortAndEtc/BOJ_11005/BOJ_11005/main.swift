//
//  main.swift
//  BOJ_11005
//
//  Created by woong on 07/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation


// 진법 변환 2

if let input = readLine()?.split(separator: " ").map({Int($0) ?? 0}) {

    let alpa = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

    var value = input[0]
    var reminders: [Int] = []
    let punctuation = input[1]
    
    while value != 0 {
        reminders.append(value % punctuation)
        value /= punctuation
    }
    
    for i in reminders.reversed() {
        if i >= 10 {
            print(alpa[i-10], terminator: "")
        } else {
            print(i, terminator: "")
        }
    }
}


// 다른 풀이
// 재귀 활용

//func solve(_ n: Int, _ b: Int) {
//    if n == 0 {
//        return
//    }
//    solve(n / b, b)
//    let temp = n % b
//    if temp >= 10 {
//        let transition = Character(UnicodeScalar(temp + 55)!)
//        print(transition, terminator: "")
//    } else {
//        print(temp, terminator: "")
//    }
//}
//
//let input = readLine()!.split(separator: " ").map { Int($0)! }
//solve(input.first!, input.last!)
//print()

