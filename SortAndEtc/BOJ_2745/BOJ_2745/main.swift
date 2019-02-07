//
//  main.swift
//  BOJ_2745
//
//  Created by woong on 07/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

extension Int {
    func square(_ num: Int) -> Int {
        var squaredNumber = 1
        for _ in 0..<num {
            squaredNumber *= self
        }
        return squaredNumber
    }
}

if let input = readLine()?.split(separator: " ").map({String($0)}) {
    let conversions = Array("123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let n = Array(input[0])
    let b = Int(input[1]) ?? 0
    var result = 0

    for i in 0..<n.count {
        if let number = conversions.firstIndex(of: n[n.count - 1 - i]).map({ Int(String($0)) ?? 0 }) {
            result += (number + 1) * b.square(i)
        }
    }
    
    print(result)
}

