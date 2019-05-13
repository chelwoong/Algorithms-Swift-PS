//
//  main.swift
//  BOJ_10809
//
//  Created by woong on 25/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation


let alphabetArray = Array("abcdefghijklmnopqrstuvwxyz")
var containArray: [Int] = [Int](repeating: -1, count: 26)

if let word = readLine() {
    for (index, value) in word.enumerated() {
        let idx = alphabetArray.firstIndex(of: value) ?? 0
        if containArray[idx] == -1 {
            containArray[idx] = index
        }
    }
    
    for value in containArray {
        print(value, terminator:" ")
    }
}
