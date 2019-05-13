//
//  main.swift
//  BOJ_2446
//
//  Created by woong on 27/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

let n = Int(readLine()!)!

Array(0..<n).forEach({
    print(String(repeating: " ", count: $0), terminator: "")
    print(String(repeating: "*", count: (n-$0)*2 - 1))
})

Array(1..<n).forEach({
    print(String(repeating: " ", count: n-$0-1), terminator:"")
    print(String(repeating: "*", count: (($0+1)*2)-1))
})

