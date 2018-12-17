//
//  main.swift
//  BOJ_10952
//
//  Created by woong on 18/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

import Foundation

while let line = readLine() {
    let lines = line.components(separatedBy: " ")
    
    let numA = Int(lines[0])!
    let numB = Int(lines[1])!
    
    let sum = numA + numB
    
    if sum == 0 {
        break
    } else {
        print(sum)
    }
}
