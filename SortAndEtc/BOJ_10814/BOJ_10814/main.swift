//
//  main.swift
//  BOJ_10814
//
//  Created by woong on 15/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

struct member {
    let age: Int
    let name: String
    let order: Int
}

if let n = Int(readLine() ?? "0") {
    
    var mem: [member] = []
    
    for i in 0..<n {
        if let m = readLine()?.split(separator: " ") {
            mem.append(member(age: Int(m[0]) ?? 0, name: String(m[1]), order: i))
        }
    }
    
    mem.sort { $0.age != $1.age ? $0.age < $1.age : $0.order < $1.order}
    
    for i in 0..<n {
        print("\(mem[i].age) \(mem[i].name)")
    }
    
}

