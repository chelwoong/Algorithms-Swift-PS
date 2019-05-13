//
//  main.swift
//  BOJ_9095
//
//  Created by woong on 30/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation



if let testCase = readLine() {
    let t = Int(testCase) ?? 0
    
    for _ in 0..<t {
        var arrays : (a1: Int, a2: Int , a3: Int) = (1, 2, 4)
        
        if let input = readLine() {
            let n = Int(input) ?? 0
            
            if n == 1 {
                print(arrays.a1)
            } else if n == 2 {
                print(arrays.a2)
            } else if n == 3 {
                print(arrays.a3)
            } else {
                for _ in 4...n {
                    arrays = (arrays.a2, arrays.a3, arrays.a1 + arrays.a2 + arrays.a3)
                }
                print(arrays.a3)
            }
        }
    }
}

