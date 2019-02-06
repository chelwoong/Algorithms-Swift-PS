//
//  main.swift
//  BOJ_9613
//
//  Created by woong on 07/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

func Gcd(_ a: Int, _ b: Int) -> Int {
    return (a % b == 0) ? b : Gcd(b, a%b)
}

if let testCase = readLine().map({Int($0) ?? 0}) {
    for _ in 0..<testCase {
        var sum = 0
        let input = readLine()!.split(separator: " ").map{Int($0) ?? 0}
        for i in 1..<input[0] {
            for j in i+1...input[0] {
                sum += Gcd(input[i], input[j])
            }
        }
        print(sum)
    }
}

