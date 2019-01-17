//
//  main.swift
//  BOJ_11004
//
//  Created by woong on 17/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine()?.split(separator: " ").map({ Int($0) ?? 0}) {
    let k = input[1]
    
    if var a = readLine()?.split(separator: " ").map({ Int($0) ?? 0}) {
        a.sort()
        print(a[k-1])
    }
}

