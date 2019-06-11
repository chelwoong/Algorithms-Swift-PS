//
//  main.swift
//  BOJ_10610
//
//  Created by woong on 10/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation


guard let input = readLine() else {fatalError()}
var numbers = [Int](repeating: 0, count: 10)
var checkMultiple = 0

for i in input {
    let n = Int(String(i))!
    numbers[n] += 1
    checkMultiple += n
}
var result = ""

if (checkMultiple % 3 != 0) || (numbers[0] == 0) {
    print("-1")
} else {
    for i in 1...9 {
        for _ in 0..<numbers[i] {
            result = String(i) + result
        }
    }
    
    for _ in 0..<numbers[0] {
        result += "0"
    }
}

print(result)
