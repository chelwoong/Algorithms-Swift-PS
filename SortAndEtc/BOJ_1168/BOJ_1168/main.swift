//
//  main.swift
//  BOJ_1168
//
//  Created by woong on 01/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let input = readLine()?.split(separator: " ").map({Int($0) ?? 0}) {
    
    var people: [Int] = []
    var result: [Int] = []
    let order = input[1] - 1
    var current = order
    
    for i in 1...input[0] {
        people.append(i)
        // [1 2 3 4 ... n]
    }
    
    for _ in 0..<people.count {
        result.append(people.remove(at: current))
        current += order
        if people.count != 0 {
            current %= people.count
        }
    }
    print("<" + result.map{String($0)}.joined(separator: ", ") + ">")
}

