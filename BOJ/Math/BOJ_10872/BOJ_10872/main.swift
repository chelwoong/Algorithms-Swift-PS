//
//  main.swift
//  BOJ_10872
//
//  Created by woong on 16/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

// 팩토리얼

if let n = readLine().map({ Int($0) ?? 0}) {
    
    var number = 1
    if n >= 2 {
        for i in 2...n {
            number *= i
        }
    }
    
    print(number)
    
    
}

