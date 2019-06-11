//
//  main.swift
//  BOJ_4963
//
//  Created by woong on 06/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

while let testCase = readLine()?.split(separator: " ") {
    
    let w = Int(testCase[0])!
    let h = Int(testCase[1])!
    
    if w == 0 && h == 0 {
        break
    }
    
    var map = [[String]](repeating: [String](), count: h)
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: w), count: h)
    var count = 0
    
    let dr = [-1, -1, -1, 0, 0, 0, 1, 1, 1]
    let dc = [-1, 0, 1, -1, 0, 1, -1, 0, 1]
    
    for i in 0..<h {
        let lends = readLine()!.split(separator: " ").map({String($0)})
        
        for c in lends {
            map[i].append(c)
        }
    }
    
    func dfs(_ r: Int, _ c: Int) {
        if visited[r][c] {
            return
        }
        
        visited[r][c] = true
        
        if map[r][c] == "1" {
            for i in 0..<9 {
                let nr = r + dr[i]
                let nc = c + dc[i]
                
                if nr >= 0 && nc >= 0 && nr < h && nc < w {
                    dfs(nr, nc)
                }
            }
        }
    }
    
    for i in 0..<h {
        for j in 0..<w {
            if !visited[i][j] && map[i][j] == "1" {
                dfs(i, j)
                count += 1
            }
        }
    }
    
    print(count)
}
