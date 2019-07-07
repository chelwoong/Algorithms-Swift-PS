//
//  main.swift
//  BOJ_1546
//
//  Created by woong on 03/07/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

guard let input = readLine().map({Int($0)!}) else {fatalError()}
let nums = readLine()!.split(separator: " ").map{Double($0)!}

let max = nums.max()!
var total = 0.0
for n in nums {
    total += n / max * 100
}

print(total/Double(input))
