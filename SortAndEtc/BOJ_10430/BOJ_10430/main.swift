//
//  main.swift
//  BOJ_10430
//
//  Created by woong on 01/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine()?.split(separator: " ").map({Int($0) ?? 0}) {
    let a = input[0]
    let b = input[1]
    let c = input[2]
    
    print((a+b)%c)
    print((a%c + b%c)%c)
    print((a*b)%c)
    print((a%c * b%c)%c)
}

