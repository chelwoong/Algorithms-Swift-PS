//
//  main.swift
//  BOJ_10828
//
//  Created by woong on 17/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

//
//  Stack 구현
//

class Stack {
    
    var stack: [Int] = []
    
    func push(_ x: Int) -> Void{
        stack.append(x)
    }
    
    func pop() -> Int {
        return stack.popLast() ?? -1
    }
    
    func size() -> Int {
        return stack.count
    }
    
    func empty() -> Int {
        if stack.isEmpty {
            return 1
        } else {
            return 0
        }
    }
    
    func top() -> Int {
        return stack.last ?? -1
    }
}

if let input = Int(readLine() ?? "0") {
    let stack = Stack.init()
    
    for _ in 0..<input {
        if let a = readLine()?.split(separator: " ") {
            switch a[0] {
            case "push":
                stack.push(Int(String(a[1])) ?? 0)
            case "top":
                print(stack.top())
            case "pop":
                print(stack.pop())
            case "size":
                print(stack.size())
            case "empty":
                print(stack.empty())
            default:
                "0"
            }
        }
    }
}
