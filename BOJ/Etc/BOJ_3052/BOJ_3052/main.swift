//
//  main.swift
//  BOJ_3052
//
//  Created by woong on 03/07/2019.
//  Copyright © 2019 woong. All rights reserved.
//


var remainded = Set<Int>()

for _ in 0..<10 {
    let n = readLine().map{Int($0)!}!
    remainded.insert(n % 42)
}

print(remainded.count)
