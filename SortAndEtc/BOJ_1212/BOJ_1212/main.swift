//
//  main.swift
//  BOJ_1212
//
//  Created by woong on 11/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

func convertToBinary(number: String) -> String {
    var binary = ""
    let k = number.reversed().map({Int(String($0)) ?? 0})
    for i in 0..<k.count {
        var n = k[i]
        for _ in 0..<3 {
            let b = String(n % 2)
            if n >= 2 {
                binary += b
            } else {
                if (i == k.count - 1) && n == 0{
                    
                } else {
                    binary += String(n)
                }
            }
            n /= 2
        }
    }
    return String(binary.reversed())
}

if let input = readLine() {
    print(convertToBinary(number: input))
}

