//
//  main.swift
//  BOJ_5585
//
//  Created by woong on 27/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation


guard let input = readLine().map({Int($0)!}) else {fatalError()}
let counter = 1000
var price = counter - input
var result = 0
let coinArray = [500, 100, 50, 10, 5, 1]


for coin in coinArray {
    
    while price >= coin {
//        print(price, result)
        price -= coin
        result += 1
    }
}

print(result)
