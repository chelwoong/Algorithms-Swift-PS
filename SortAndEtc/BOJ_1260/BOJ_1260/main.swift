    //
//  main.swift
//  BOJ_1260
//
//  Created by woong on 14/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

func Bfs(nodes: [Int], edges: [(node: Int, child: Int)], start: Int) {
    
}

// 4 5 1
// V E Start

if let input = readLine()?.split(separator: " ").map({Int($0) ?? 0}) {
    var vertexs: [Int] = []
    var visits: [Bool] = [Bool](repeating: false, count: input[0])
    var stack: [Int] = []
    var currentNode: Int
    
    var edges: [[Int]] = Array(repeating: [], count: input[0])
    
    for i in 0..<input[0] {
        vertexs.append(i)
    }
    
    for _ in 0..<input[1] {
        if let edge = readLine()?.split(separator: " ").map({Int($0) ?? 0}) {
            edges[edge[0]-1].append(edge[1])
        }
    }
    print(edges)
    
    // input start node to stack
    stack.append(vertexs.remove(at: input[2] - 1))
    visits[input[2] - 1] = true
    print("stack: \(stack)")
    // 방문 노드가 남아있지 않으면 종료
    while(vertexs != []) {
        // currentNode pop and print currentNode
        currentNode = stack.popLast() ?? 0
        visits[currentNode] = true
        print(currentNode, terminator: " ")
        print("currentNode: \(currentNode)")
        
        // currentNode의 childs push
        while edges[currentNode] != [] {
            let node = edges[currentNode].popLast() ?? 0
            
            // 방문한적이 없는 child 만 push
            if !visits[node - 1] {
                stack.append(vertexs.remove(at: node - 1))
                
            }
        }
        print("stack: \(stack)")
        
        
        
    }
    
    
    //
    
    
    
    
}

