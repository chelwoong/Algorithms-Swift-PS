//
//  main.swift
//  BOJ_6588
//
//  Created by woong on 14/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

func getPrime(_ n: Int) -> [Bool] {
    
     var boolPrimes = [Bool](repeating: true, count: n+1)

     for i in 2...n {
          if i*i >= n {
               break
          }
          
          if boolPrimes[i] {
               for j in stride(from: i*i, to: n+1, by: i) {
                    if boolPrimes[j] {
                         boolPrimes[j] = false
                    }
               }
          }
     }
   
     return boolPrimes
}



while let input = readLine().map({Int($0) ?? 0}), input != 0 {
     let primes = getPrime(input)
     for i in stride(from: 3, to: input+1, by: 2) {
          if primes[i] {
               let temp = input - i
               if primes[temp] {
                    print("\(input) = \(i) + \(temp)")
                    break
               }
          }
    }
}
