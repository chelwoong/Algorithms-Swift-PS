//
//  main.swift
//  BOJ_10845
//
//  Created by woong on 24/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

class Queue {
    var queue: [Int] = []
    
    func push(x: Int) {
        queue.append(x)
    }
    
    func pop() -> Int {
        if queue.count == 0 {
            return -1
        } else {
            return queue.remove(at: 0)
//            queue.removeFirst()
        }
    }
    
    func size() -> Int {
        return queue.count
    }
    
    func empty() -> Int {
        return queue.count == 0 ? 1 : 0
    }
    
    func front() -> Int {
        return queue.first ?? -1
    }
    
    func back() -> Int {
        return queue.last ?? -1
    }
    
}

if let n = Int(readLine() ?? "0") {
    let queue = Queue.init()
    for _ in 0..<n {
        if let order = readLine()?.split(separator: " ") {
            switch order[0] {
            case "push" :
                queue.push(x: Int(order[1]) ?? 0)
            case "pop" :
                print(queue.pop())
            case "size" :
                print(queue.size())
            case "empty" :
                print(queue.empty())
            case "front" :
                print(queue.front())
            case "back" :
                print(queue.back())
            default:
                print("Nil")
            }
        }
    }
}

