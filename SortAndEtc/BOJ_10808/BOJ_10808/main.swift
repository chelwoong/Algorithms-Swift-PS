//
//  main.swift
//  BOJ_10808
//
//  Created by woong on 25/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

var countArray: [Int] = [Int](repeating: 0, count: 26)
var alphabetArray = Array("abcdefghijklmnopqrstuvwxyz")

if let word = readLine(){
    
    for value in word {
        let idx = alphabetArray.firstIndex(of: value) ?? 0
        countArray[idx] += 1
    }
    
    for value in countArray {
        print(value, terminator:" ")
    }
}

