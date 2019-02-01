//
//  main.swift
//  BOJ_2609
//
//  Created by woong on 01/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

func getDivisor (numA: Int) -> [Int] {
    var divisor: [Int] = []
    
    for i in 1...numA {
        if numA % i == 0 {
            divisor.append(i)
        }
    }
    return divisor
}

func getMaxDivisor(numA: Int, numB: Int) -> Int {
    let divisorA = getDivisor(numA: numA)
    let divisorB = getDivisor(numA: numB)
    
    var idxA = divisorA.count - 1
    var idxB = divisorB.count - 1
    
    while divisorA[idxA] != divisorB[idxB] {
        divisorA[idxA] > divisorB[idxB] ? (idxA -= 1) : (idxB -= 1)
    }
    return divisorA[idxA]
}

func getMinMultiple(numA: Int, numB: Int) -> Int {
    var idxA = 1
    var idxB = 1
    
    while numA * idxA != numB * idxB {
        numA * idxA > numB * idxB ? (idxB += 1) : (idxA += 1)
    }
    
    return numA * idxA
}
if let input = readLine()?.split(separator: " ").map({Int($0) ?? 0}) {
    
    let maxDivisor = getMaxDivisor(numA: input[0], numB: input[1])
    let minMultiple = getMinMultiple(numA: input[0], numB: input[1])

    print(maxDivisor)
    print(minMultiple)
    
}

// 다른 풀이

//let input = readLine()!.characters.split(separator: " ").map { String($0) }.map { Int($0)! }
//
//func getGcd(_ a: Int, _ b: Int) -> Int { // Greast Common Dividsor
//    return (a % b == 0) ? b : getGcd(b, a % b)
//}
//
//func getLcm(_ a: Int, _ b: Int) -> Int { // Least Common Multiple
//    return (a * b) / getGcd(a, b) // Euclid's algorithm
//}
//
//print(getGcd(input[0], input[1]))
//print(getLcm(input[0], input[1]))

