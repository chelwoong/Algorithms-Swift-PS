//
//  main.swift
//  BOJ_1406
//
//  Created by woong on 19/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

if let str = readLine() {
    let n = readLine().map{Int($0)!}!

    var stackL = str
    var stackR = ""
    
    
    
    for _ in 0..<n {
        var order = readLine()
        switch order {
        case "L":
            if stackL != "" {
                let c = stackL.removeLast()
                stackR.append(c)
            }
            
        case "D":
            if stackR != "" {
                let c = stackR.removeLast()
                stackL.append(c)
            }
            
        case "B":
            if stackL != "" {
                stackL.removeLast()
            }
        default:
            let p = order!.removeLast()
            stackL.append(p)
        }
    }
    
    print(stackL + stackR.reversed())
    
}
