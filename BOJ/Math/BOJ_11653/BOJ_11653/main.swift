//
//  main.swift
//  BOJ_11653
//
//  Created by woong on 16/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

// 소인수분해

func getPrime(_ n: Int) -> [Int] {
    var boolPrime: [Bool] = [Bool](repeating: true, count: n+1)
    var primes = [Int]()
    
    for i in 2...n {
        if !boolPrime[i] {continue}
        primes.append(i)
        if i*i > n {continue}
        
        for j in stride(from: i*i, to: n+1, by: i) {
            if boolPrime[j] {
                boolPrime[j] = false
            }
        }
    }
    
    return primes
}

if let n = readLine().map({Int($0) ?? 0}) {
    
    if n != 1 {
        let primes = getPrime(n)
        var number = n
        
        while !primes.contains(number) {
            for i in primes {
                if number % i == 0 {
                    number /= i
                    print(i)
                    break
                }
            }
        }
        print(number)
    }
}

