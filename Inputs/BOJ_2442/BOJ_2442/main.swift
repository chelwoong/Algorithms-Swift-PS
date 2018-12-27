//
//  main.swift
//  BOJ_2442
//
//  Created by woong on 27/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

let n = Int(readLine()!)!

Array(1...n).forEach({
    print(String(repeating: " ", count: n-$0), terminator:"")
    print(String(repeating: "*", count: $0*2-1))
})

