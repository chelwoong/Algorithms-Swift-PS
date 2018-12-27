//
//  main.swift
//  BOJ_10991
//
//  Created by woong on 27/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    print(String(repeating: " ", count: n-i), terminator:"")
    for _ in 1...i {
        print("* ", terminator:"")
    }
    print("")
}
