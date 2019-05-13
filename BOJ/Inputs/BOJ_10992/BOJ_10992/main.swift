//
//  main.swift
//  BOJ_10992
//
//  Created by woong on 27/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

let n = Int(readLine()!)!


Array(1..<n).forEach({
    print(String(repeating: " ", count: n-$0), terminator:"")
    if $0 > 1 {
        print("*", terminator:"")
        print(String(repeating: " ", count: ($0-1)*2-1), terminator:"")
        print("*")
    } else {
        print("*")
    }
})

print(String(repeating: "*", count: n*2-1))
