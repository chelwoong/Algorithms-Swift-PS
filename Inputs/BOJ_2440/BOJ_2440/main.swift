//
//  main.swift
//  BOJ_2440
//
//  Created by woong on 27/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//import Foundation

if let input = Int(readLine()!) {
    Array(1...input).reversed().forEach({print(String(repeating: "*", count: $0))})
}
