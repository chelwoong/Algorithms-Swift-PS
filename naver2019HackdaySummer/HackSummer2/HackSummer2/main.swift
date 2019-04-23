//
//  main.swift
//  HackSummer2
//
//  Created by woong on 13/04/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

public class Tree {
    public var x : Int = 0
    public var l : Tree?
    public var r : Tree?
    public init() {}
}


public func solution(_ T : Tree?) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    var stack = [Int]()
    var sets = Set<[Int]>()
    
    if let tree = T {
        stack.append(tree.x)
    }
    
    while !stack.isEmpty {
        
    }
    
    var roots = Set<[Int]>()
    
    roots.insert([1,2,3,4,5])
    
    print(roots)
    
//    if let tree = T {
//        print(tree.l.x!)
//        print(tree.x)
//        print(tree.r.x!)
//
//    }
    return 0
}

var stack: [Int] = []

stack.last
var roots = Set<[Int]>()

var sets: [Tree : Set<Int>]

roots.insert([1,2,3,4,5])

print(roots)

