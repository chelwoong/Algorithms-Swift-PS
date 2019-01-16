//
//  main.swift
//  BOJ_ 11651
//
//  Created by woong on 15/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

struct matrix {
    let x: Int
    let y: Int
}

if let n = Int(readLine() ?? "0") {
    
    var mat: [matrix] = []
    
    for _ in 0..<n {
        if let m = readLine()?.split(separator: " ").map({ Int($0) ?? 0}) {
            mat.append(matrix(x: m[0], y: m[1]))
        }
    }
    
    mat.sort(by: {$0.y == $1.y ? $0.x < $1.x : $0.y < $1.y})
    
    for i in 0..<n {
        print("\(mat[i].x) \(mat[i].y)")
    }
}

