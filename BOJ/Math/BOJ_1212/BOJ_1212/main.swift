//
//  main.swift
//  BOJ_1212
//
//  Created by woong on 07/04/2019.
//  Copyright © 2019 woong. All rights reserved.
//

// 8진수 -> 2진수 변환
import Foundation

func octalStringConvertToBinary(_ octal: String) -> String {
    if octal == "0" {
        return "0"
    }
    var result = ""
    for i in octal {
        if let oct =  Int(String(i)) {
            result += octalToBinary(octal: oct)
        }
    }
    
    while true {
        if let first = result.first {
            if first == "0" {
                result.remove(at: result.startIndex)
            } else {
                break
            }
        }
    }
    
    
    return result
}

func octalToBinary(octal: Int) -> String {
    var value = ""
    var oct = octal
    var division = 4

    for _ in 0...2 {
        if oct != 0 {
            value += String(oct/division)
            oct %= division
            division /= 2
        } else {
            value += "0"
        }
        
    }
    
   return value
}

if let octalString = readLine() {
    print(octalStringConvertToBinary(octalString))
}

