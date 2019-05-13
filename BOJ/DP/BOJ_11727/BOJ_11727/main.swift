//
//  main.swift
//  BOJ_11727
//
//  Created by woong on 28/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

var fibo: (before: Int, current: Int) = (1,3)

if let input = readLine() {
    let n = Int(input) ?? 0
    
    if n == 1 {
        print(fibo.before)
    } else if n == 2 {
        print(fibo.current)
    } else {
        for _ in 3...n {
            fibo = (fibo.current, (fibo.before * 2 + fibo.current) % 10007)
        }
        print(fibo.current)
    }
}


