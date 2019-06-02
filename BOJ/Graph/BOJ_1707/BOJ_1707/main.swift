//
//  main.swift
//  BOJ_1707
//
//  Created by woong on 22/05/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

let testCase = readLine().map{Int($0)!}!

for _ in 0..<testCase {
    
    func solution() {
        let input = readLine()!.split(separator: " ").map{Int($0)!}
        let v = input[0], e = input[1]
        var result: Bool = true
        
        var nodes = [[Int]](repeating: [Int](), count: v+1)
        
        for _ in 0..<e {
            if let n = readLine()?.split(separator: " ").map({Int($0)!}) {
                nodes[n[0]].append(n[1])
                nodes[n[1]].append(n[0])
            }
        }
        
        var flags = [Int](repeating: 2, count: v+1)
        var visited = [Bool](repeating: false, count: v+1)
        
        func dfs(node current: Int, flag: Int) {
            if !result { return }
            visited[current] = true
            flags[current] = flag
            
            for i in nodes[current] {
                
                if !visited[i] {
//                    print("current: \(current), flag: \(flag), i:\(i), target's flag: \(flags[i])")
                    dfs(node: i, flag: (flag+1) % 2)
                } else if flags[i] == flag {
                    result = false
                    break
                }
            }
        }
        
        for i in 1...v {
            if !visited[i] {
                dfs(node: i, flag: 0)
            }
        }
        
        result ? print("YES") : print("NO")
    }
    
    solution()
}
