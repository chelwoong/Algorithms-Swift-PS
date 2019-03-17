//
//  main.swift
//  woowahanTech4
//
//  Created by woong on 17/03/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func solution(_ pobi:[Int], _ crong:[Int]) -> Int {
    var ansP = 0, ansC = 0
    
    if ( pobi[1] != pobi[0] + 1) {
        return -1
    }
    
    if ( crong[1] != crong[0] + 1) {
        return -1
    }
    
    for i in pobi {
        let a = i / 100
        let b = (i % 100) / 10
        let c = i % 10
        let plus = a + b + c
        (ansP < plus) ? (ansP = plus) : (ansP = ansP)
        
        var mul = 0
        if(i >= 100) {
            mul = a * b * c
        } else if (i >= 10) {
            mul = b * c
        } else {
            mul = c
        }
        
        (ansP < mul) ? (ansP = mul) : (ansP = ansP)
    }
    
    for i in crong {
        let a = i / 100
        let b = (i % 100) / 10
        let c = i % 10
        let plus = a + b + c
        (ansC < plus) ? (ansC = plus) : (ansC = ansC)
        
        var mul = 0
        if(i >= 100) {
            mul = a * b * c
        } else if (i >= 10) {
            mul = b * c
        } else {
            mul = c
        }
        
        (ansC < mul) ? (ansC = mul) : (ansC = ansC)
    }
    
    if(ansP > ansC) {
        return 1
    } else if (ansP < ansC) {
        return 2
    } else {
        return 0
    }
}
