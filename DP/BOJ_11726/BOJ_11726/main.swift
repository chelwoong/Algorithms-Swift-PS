//
//  main.swift
//  BOJ_11726
//
//  Created by woong on 28/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

// import Foundation

var arrays = [1:1, 2:2]

if let input = readLine() {
    let n = Int(input) ?? 0

    if n > 2 {
        for i in 3...n {
            arrays[i] = ((arrays[i-2] ?? 0) + (arrays[i-1] ?? 0)) % 10007
        }
    }

    print(arrays[n] ?? 0)

}

// 다른풀이

//var fibo: (before: Int, current: Int) = (1, 1)
//
//if let input = readLine() {
//    let n = Int(input) ?? 0
//
//    for _ in 1...n {
//        fibo = (fibo.current, (fibo.before+fibo.current) % 10007)
//    }
//
//
//    print(fibo.current)
//}



