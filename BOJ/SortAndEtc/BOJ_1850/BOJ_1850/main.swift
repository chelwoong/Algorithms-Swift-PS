//
//  main.swift
//  BOJ_1850
//
//  Created by woong on 03/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation


func getGcd(_ a:Int, _ b: Int) -> Int{
    
    return (a % b == 0) ? b : getGcd(b, a % b)
}

if let input = readLine()?.split(separator: " ").map({Int($0) ?? 0}) {
    
    let gcd = getGcd(input[0], input[1])
    var result = ""
    for _ in 0..<gcd {
        result += "1"
    }
    
    print(result)
}

