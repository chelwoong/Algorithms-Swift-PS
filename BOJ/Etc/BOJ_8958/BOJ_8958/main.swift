//
//  main.swift
//  BOJ_8958
//
//  Created by woong on 22/07/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

guard let t = readLine().map({Int($0)!}) else {fatalError()}

for _ in 0..<t {
    guard let quiz = readLine() else {break}
    var count = 0
    var result = 0
    for q in quiz {
        if q == "O" {
            count += 1
            result += count
        } else {
            count = 0
        }
    }
    
    print(result)
}
