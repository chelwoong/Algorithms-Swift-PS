//
//  main.swift
//  BOJ_8393
//
//  Created by woong on 26/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

if let n = readLine() {
    var sum = 0
    for i in 1...Int(n)! {
        sum += i
    }

    print(sum)
}

// 다른풀이
//
//if let n = Int(readLine()!) {
//    print(n*(n+1)/2)
//
//}
