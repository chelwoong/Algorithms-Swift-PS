//
//  main.swift
//  BOJ_1260
//
//  Created by woong on 21/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

struct Graph {
    var vertex: Int
    var node: [Int]
    var visited: Bool
    
    init() {
        vertex = 0
        node = []
        visited = false
    }
}

func dfs(graph: [Graph], start: Int) {
    var graph = graph
    var stack: [Int] = []
    
    stack.append(start)
    
    
    while stack.count != 0 {
        let s = stack.popLast()!
        if graph[s].visited {
            continue
        }
        graph[s].visited = true
        print(s, terminator: " ")
        
        for i in graph[s].node.sorted(by: >) {
            if !graph[i].visited {
                stack.append(i)
            }
        }
    }
}

func bfs(graph: [Graph], start: Int) {
    var graph = graph
    var queue: [Int] = []
    
    queue.append(start)
    
    while queue.count != 0 {
        let n = queue.removeFirst()
        if graph[n].visited {
            continue
        }
        
        graph[n].visited = true
        print(n, terminator: " ")
        
        for i in graph[n].node.sorted(by: <) {
            if !graph[i].visited {
                queue.append(i)
            }
        }
    }
    
}

if let input = readLine()?.components(separatedBy: " ").map({Int($0) ?? 0}) {
    var graph: [Graph] = [Graph](repeating: Graph(), count: input[0]+1)
    
    
    for i in 1...input[0] {
        graph[i].vertex = i
    }
    
    for _ in 1...input[1] {
        if let node = readLine()?.components(separatedBy: " ").map({Int($0) ?? 0}) {
            let v = node[0]
            let e = node[1]
            
            graph[v].node.append(e)
            graph[e].node.append(v)
        }
    }
    dfs(graph: graph, start: input[2])
    print()
    bfs(graph: graph, start: input[2])
    
}
