//
//  main.swift
//  Prog_체육복
//
//  Created by woong on 23/07/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var result = n - lost.count
    var serve = reserve
    for l in lost {
        for (i, r) in serve.enumerated() {
            if l-1 == r {
                serve.removeFirst(i)
                result += 1
                break
            } else if l+1 == r {
                serve.removeFirst(i)
                result += 1
                break
            }
        }
    }
    
    return result
}

print(solution(5, [2,4], [3]))
