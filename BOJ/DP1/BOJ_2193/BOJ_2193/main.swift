//
//  main.swift
//  BOJ_2193
//
//  Created by woong on 31/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

if let input = readLine() {
    let n = Int(input) ?? 0
    
    var dp: (zero: Int, one: Int) = (0, 1)
    
    if n > 1 {
        for _ in 2...n {
            dp = (dp.one + dp.zero, dp.zero)
        }
    }
    
    
    print(dp.one + dp.zero)
}
