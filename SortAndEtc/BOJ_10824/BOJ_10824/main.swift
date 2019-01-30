//
//  main.swift
//  BOJ_10824
//
//  Created by woong on 30/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

// 네 수

if let input = readLine()?.split(separator: " ").map({ String($0)}) {
    let a = Int(input[0] + input[1]) ?? 0
    let b = Int(input[2] + input[3]) ?? 0
    
    print(a+b)
}

