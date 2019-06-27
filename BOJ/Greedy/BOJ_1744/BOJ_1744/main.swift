//
//  main.swift
//  BOJ_1744
//
//  Created by woong on 26/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

// 수 묶기
// 정렬해서 음수는 묶지 않고 양수는 큰 것부터 두 개씩 묶어나간다.

guard let input = readLine().map({Int($0)!}) else {fatalError()}
var positiveNumbers = [Int]()
var negativeNumbers = [Int]()
for _ in 0..<input {
    if let n = Int(readLine()!) {
        if n > 0 {
            positiveNumbers.append(n)
        } else {
            negativeNumbers.append(n)
        }
    }
}

var posit = positiveNumbers.sorted(by: >)
var negat = negativeNumbers.sorted(by: <)
var result = 0

for i in stride(from: 0, to: posit.count, by: 2) {
    if i+1 < posit.count {
        if (posit[i] != 1 && posit[i+1] != 1) {
            result += posit[i] * posit[i+1]
        } else {
            result += posit[i] + posit[i+1]
        }
    } else {
        result += posit[i]
    }
    
}

for i in stride(from: 0, to: negat.count, by: 2) {
    if i+1 < negat.count {
        result += negat[i] * negat[i+1]
    } else {
        result += negat[i]
    }
}

print(result)
