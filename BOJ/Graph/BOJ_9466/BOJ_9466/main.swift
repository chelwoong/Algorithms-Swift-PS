//
//  main.swift
//  BOJ_9466
//
//  Created by woong on 28/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//


func solution() {
    for _ in 0...readLine().map({Int($0) ?? 0})! {
        guard let n = readLine().map({Int($0)!}) else { return }
        var graph = [Int](repeating: 0, count: n+1)
        var visited = [Bool](repeating: false, count: n+1)
        var finished = [Bool](repeating: false, count: n+1)
        var cnt = 0
        var startOfCycle = 0
        
        guard let num = readLine()?.split(separator: " ").map({Int($0)!}) else { return }
        
        for i in 1...n {
            graph[i] = num[i-1]
        }
        
        func dfs(next current: Int) {
            if finished[current] {
               return
            }
            
            if visited[current] {
                // 싸이클 찾음
                cnt += 1
                startOfCycle = current
                var next = graph[current]
                
                while startOfCycle != next {
                    next = graph[next]
                    cnt += 1
                }
                
                
            } else {
                visited[current] = true
                dfs(next: graph[current])
            }
            
            finished[current] = true
        }
        
        for i in 1...n {
            if !visited[i] {
                dfs(next: i)
            }
        }
        
        print(n-cnt)
        
    }
}

solution()
