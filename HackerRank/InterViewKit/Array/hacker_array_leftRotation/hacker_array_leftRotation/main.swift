//
//  main.swift
//  hacker_array_leftRotation
//
//  Created by woong on 07/08/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {
    
    var result = a
    let n = a.count
    
    for i in 0..<n {
        var index = i-d
        
        if index < 0 {
            index = n + index
        }
        print(i, index)
        result[index] = a[i]
    }
    
    return result
}

print(rotLeft(a: [1, 2, 3, 4, 5], d: 4))
