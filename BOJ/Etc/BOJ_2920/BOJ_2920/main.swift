//
//  main.swift
//  BOJ_2920
//
//  Created by woong on 03/07/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

guard let inputs = readLine()?.split(separator: " ").map({Int($0)!}) else {fatalError()}
let reversed: [Int] = inputs.reversed()
var ascending = true
var descending = true

for i in 0..<inputs.count {
    if inputs[i] != i+1 {
        ascending = false
    }
    
    if reversed[i] != i+1 {
        descending = false
    }
}

if ascending {
    print("ascending")
} else if descending {
    print("descending")
} else {
    print("mixed")
}
