//
//  main.swift
//  BOJ_1783
//
//  Created by woong on 17/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

guard let input = readLine()?.split(separator: " ").map({Int($0)!}) else {fatalError()}
let n = input[0]
let m = input[1]

if n == 1 {
    print("1")
} else if n == 2 {
    print(min((m+1)/2, 4))
} else {
    if m <= 6 {
        print(min(m, 4))
    } else {
        print(m-2)
    }
}
