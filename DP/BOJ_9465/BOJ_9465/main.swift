//
//  main.swift
//  BOJ_9465
//
//  Created by woong on 31/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

func max (_ a: Int, _ b: Int) -> Int {
    return a > b ? a : b
}

if let testCase = readLine() {
    let t = Int(testCase) ?? 0
    
    for _ in 0..<t {
        if let input = readLine() {
            let n = Int(input) ?? 0
            
            var dpA: [Int] = [Int](repeating: 0, count: n+2)
            var dpB: [Int] = [Int](repeating: 0, count: n+2)
            
            let a = readLine()!.split(separator: " ").map{Int($0)!}
            let b = readLine()!.split(separator: " ").map{Int($0)!}


            
            for i in 2..<n+2 {
                dpA[i] = max( max(dpA[i-1], dpB[i-1] + a[i-2]) , dpB[i-2] + a[i-2])
                
                dpB[i] = max( max(dpB[i-1], dpA[i-1] + b[i-2]) , dpA[i-2] + b[i-2])
            }
            
            if dpA[n+1] > dpB[n+1] {
                print(dpA[n+1])
            } else {
                print(dpB[n+1])
            }
        }
    }
}
