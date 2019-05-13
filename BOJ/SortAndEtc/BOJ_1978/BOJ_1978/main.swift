//
//  main.swift
//  BOJ_1978
//
//  Created by woong on 12/04/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

//var boolPrimes = [Bool](repeating: true, count: 1001)

//func getPrime(numbers: [Int]) -> Int {
//    var result = 0
//
//    for i in numbers {
//        if boolPrimes[i] {
//            result += 1
//        }
//    }
//
//    return result
//}
//
//func findPrime() {
//    boolPrimes[1] = false
//
//    for i in 2...1000 {
//        if boolPrimes[i] {
//            for j in i+1...1000 {
//                if j % i == 0 {
//                    boolPrimes[j] = false
//                }
//            }
//        }
//    }
//}
//
//if let number = readLine().map({Int($0) ?? 0}) {
//
//    var inputArr = readLine()!.components(separatedBy: " ").map{(Int($0)!)}
//
//    findPrime()
//    print(getPrime(numbers: inputArr))
//}


// MARK: 다른풀이
// 한 원소 n마다 2~n 까지의 수로 나눠지는 것이 없으면 소수.

func isPrime(num: Int) -> Int {
    if num == 1 { return 0}
    
    for i in 2..<num {
        if num % i == 0 {
            return 0
        }
    }
    
    return 1
}


if let number = readLine().map({Int($0) ?? 0}) {
    var result = 0
    var inputArr = readLine()!.components(separatedBy: " ").map{(Int($0)!)}

    for i in inputArr {
        result += isPrime(num: i)
    }
    print(result)
}
