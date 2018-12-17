//
//  main.swift
//  Inputs
//
//  Created by woong on 12/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

import Foundation

// Questions

//        10951

while(true) {
    let caseInput = readLine()?.components(separatedBy: " ")
    
    if (caseInput != nil) {
        let numA = Int(caseInput![0])!
        let numB = Int(caseInput![1])!
        
        print(numA + numB)
    } else {
        break
    }
    
}



//      10950 -2

//let caseInput = readLine()!
//let caseNum = Int(caseInput)!
//
//
//for _ in 0..<caseNum {
//    let plusNum = readLine()!.characters.split(separator: " ").map(String.init)
//    let numA = Int(plusNum[0])!
//    let numB = Int(plusNum[1])!
//    print(numA + numB)
//}

//      10950 - 1

//let input: Int = Int(readLine()!)!
//
//var sum: [Int] = []
//
//for n in 0..<input {
//    let a = readLine()
//
//    if (a != nil) {
//        var array = a!.components(separatedBy: " ")
//        print(Int(array[0])! + Int(array[1])!)
//    }
//}




// 2558
//
//    let a = readLine()
//    let b = readLine()
//
//    if let a = a, let b = b {
//
//        print(Int(a)! + Int(b)!)
//    }


// 1000
//    let input = readLine()
//    if let a = input {
//        var array = a.components(separatedBy: " ")
//        let sum = Int(array[0])! + Int(array[1])!
//        print(sum)
//    }


