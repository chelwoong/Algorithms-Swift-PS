//
//  main.swift
//  BOJ_2089
//
//  Created by woong on 08/04/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func solution(_ number: Int) -> String {
    var num = number
    var result = ""
    
    if num == 0 {
        return "0"
    }

    while (num <= -2) || (num >= 2) {
        if num % -2 < 0 {
            result = "1" + result
            num = (num / -2) + 1
        } else {
            result = String(num % -2) + result
            num = num / -2
        }
    }
    
    if num == 1 {
        result = "1" + result
    } else if num == -1 {
        result = "11" + result
    }
    
    return result
}

if let n = readLine() {
    if let i = Int(n) {
        print(solution(i))
    }
}
