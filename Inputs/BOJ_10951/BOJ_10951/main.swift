//
//  main.swift
//  BOJ_10951
//
//  Created by woong on 18/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

while let input = readLine()?.split(separator: " ").map({Int($0) ?? 0}) {
    print(input[0] + input[1])
}



//while true {
//    let input = readLine()?.split(separator: " ").map{Int($0) ?? 0}
//
//    if input != nil {
//        if let a = input[0], let b = input[1] {
//            print(a+b)
//        }
//        else {
//            break
//        }
//    }
//}


//import Foundation
//
    //// 2
//
//while let line = readLine() {
////    let linedivider = line.characters.split(separator: " ").map(String.init)
//    let linedivider = line.components(separatedBy: " ")
//    let a = Int(linedivider[0])!
//    let b = Int(linedivider[1])!
//    print(a+b)
//}
//
    //// 1
//while(true) {
//    let caseInput = readLine()?.components(separatedBy: " ")
//
//    if (caseInput != nil) {
//        let numA = Int(caseInput![0])!
//        let numB = Int(caseInput![1])!
//
//        print(numA + numB)
//    } else {
//        break
//    }
//}






