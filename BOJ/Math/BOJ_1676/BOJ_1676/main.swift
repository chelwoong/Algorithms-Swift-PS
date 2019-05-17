//
//  main.swift
//  BOJ_1676
//
//  Created by woong on 16/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

// 팩토리얼 0의 개수

if let n = readLine().map({ Int($0) ?? 0}) {
  

    var num = n
    var count = 0
    if num != 0 {
        while num > 0 {
            num /= 5
            count += num
        }

        print(count)
    } else {
        print(0)
    }
    
    
}
