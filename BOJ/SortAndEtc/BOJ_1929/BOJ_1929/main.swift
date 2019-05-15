//
//  main.swift
//  BOJ_1929
//
//  Created by woong on 13/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//


func findPrime(start s: Int, end e: Int) -> Void {
    var isPrime = [Bool](repeating: true, count: e+1)
    
    for i in 2...e {
        if isPrime[i] {
            if i >= s {
                print(i)
            }
            
            let pow = i * i
            if pow < e {
                for j in pow...e {
                    if j % i == 0 {
                        isPrime[j] = false
                    }
                }
            }
        }
    }
}

if let input = readLine()?.split(separator: " ").map({Int($0) ?? 0}) {
    findPrime(start: input[0], end: input[1])
}
