//
//  main.swift
//  BOJ_11724
//
//  Created by woong on 22/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map({Int($0)!})
let n = input[0], m = input[1]

var nodes = [[Int]](repeating: [Int](), count: n+1)
var visited = [Bool](repeating: false, count: n+1)
var count = 0

for _ in 1...m {
    let node = readLine()!.components(separatedBy: " ").map({Int($0)!})
    let v = node[0], e = node[1]
    
    nodes[v].append(e)
    nodes[e].append(v)
}

for i in 1...n {
    nodes[i].sort()
}

//print(nodes)

func dfs(node current: Int) {
    visited[current] = true
    
    for i in nodes[current] {
        if !visited[i] {
            dfs(node: i)
        }
    }
}

for i in 1...n {
    if !visited[i] {
        count += 1
        dfs(node: i)
    }
}

print(count)
