//
//  main.swift
//  woowahanTech5
//
//  Created by woong on 17/03/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func solution(_ number:Int) -> Int {
    var cnt = 0
    for i in 1...number {
        let num = String(i)
        for n in num {
            if( n == "3" || n == "6" || n == "9") {
                cnt += 1
            }
        }
        
    }
    
    return cnt
}

solution(33)
