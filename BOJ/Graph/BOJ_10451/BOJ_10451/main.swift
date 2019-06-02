//
//  main.swift
//  BOJ_10451
//
//  Created by woong on 23/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

func solution() {
    guard let input = readLine().map({Int($0) ?? 0}) else { return }
    
    for _ in 0..<input {
        
        guard let n = readLine().map({Int($0) ?? 0}) else { return }
        
        guard let p = readLine()?.split(separator: " ").map({Int($0)!}) else { return }
        
        var nodes = [Int](repeating: 0, count: n+1)
        var visited = [Bool](repeating: false, count: n+1)
        var cycleCount = 0
        
        func dfs(node current: Int) {
            visited[current] = true
            let next = nodes[current]
            if !visited[next] {
                dfs(node: next)
            }
        }
        
        for i in 1...n {
            nodes[i] = p[i-1]
        }
        
        for i in 1...n {
            if !visited[i] {
                cycleCount += 1
                dfs(node: i)
            }
            
        }
        
        print(cycleCount)
    }
}

solution()
