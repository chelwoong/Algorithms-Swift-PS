//
//  main.swift
//  BOJ_7576
//
//  Created by woong on 06/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation



func solution() {
    guard let input = readLine()?.split(separator: " ") else { return }
    guard let w = Int(input[0]) else {return}
    guard let h = Int(input[1]) else {return}
    
    let nextR = [-1, 0, 1, 0]
    let nextC = [0, 1, 0, -1]
    
    var map = [[Int]](repeating: [Int](repeating: 0, count: w), count: h)
    
    var queue = [(Int, Int)]()
    var result = 0
    
    for i in 0..<h {
        guard let inputs = readLine()?.split(separator: " ") else {return}
        
        for j in 0..<inputs.count {
            let s = inputs[j]
            map[i][j] = Int(String(s))!
            if s == "1" {
                queue.append((i, j))
            }
            
        }
    }
    
    func bfs() {
        while !queue.isEmpty {
            
            let q = queue.removeFirst()
//            print("current: \(q)")
            for i in 0..<4 {
                let nR = q.0 + nextR[i]
                let nC = q.1 + nextC[i]
                
                if nR < 0 || nR >= h || nC < 0 || nC >= w || map[nR][nC] != 0 {
                    continue
                }
                
//                print("\(nR),\(nC)")
                queue.append((nR, nC))
                map[nR][nC] = map[q.0][q.1] + 1
                if map[nR][nC] > result {
                    result = map[nR][nC]
                }
            }
        }
    }
    
    bfs()
    for i in 0..<h {
        if map[i].contains(0) {
            print("-1")
            return
        }
    }
    
    print(result-1)
}

solution()

