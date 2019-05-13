//
//  main.swift
//  BOJ_2441
//
//  Created by woong on 27/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

let input = Int(readLine()!)!
Array(0..<input).forEach({
    print(String(repeating: " ", count: $0), terminator:"");
    print(String(repeating: "*", count: input-$0))
})


