//
//  main.swift
//  BOJ_2667
//
//  Created by woong on 05/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

func solution() {
    guard let n = readLine().map({Int($0)!}) else {return}
    
    var map = [[Character]](repeating: [Character](), count: n)
    var visited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
    var count = 0
    var result = [Int]()
    var nextRow = [-1, 0, 1, 0]
    var nextCol = [0, 1, 0, -1]
    
    for i in 0..<n {
        let inputs = readLine()!
        for s in inputs {
            map[i].append(s)
        }
    }
    
    func dfs(row currentRow: Int, col currentCol: Int) {
        if visited[currentRow][currentCol] {
            return
        }
        
        visited[currentRow][currentCol] = true
        
        if map[currentRow][currentCol] == "1" {
            count += 1
            for i in 0..<4 {
                let nextR = currentRow + nextRow[i]
                let nextC = currentCol + nextCol[i]
                if nextR >= 0 && nextR < n && nextC >= 0 && nextC < n {
//                    print("next: (\(nextR), \(nextC))")
                    dfs(row: nextR, col: nextC)
                }
            }
        }
    }
    
    for i in 0..<n {
        for j in 0..<n {
            if !visited[i][j] && map[i][j] == "1" {
                count = 0
                dfs(row: i, col: j)
                result.append(count)
            }
        }
    }
        
    print(result.count)
    for i in result.sorted(by: <) {
        print(i)
    }

}

solution()
