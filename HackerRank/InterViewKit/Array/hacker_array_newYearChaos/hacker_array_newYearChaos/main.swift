//
//  main.swift
//  hacker_array_newYearChaos
//
//  Created by woong on 07/08/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

// Complete the minimumBribes function below.
func minimumBribes(q: [Int]) -> Void {
    var result = 0
    var arr = q
    var i = 0
    let n = q.count
    // 현재 위치에서 자기자리까지 차이가 2 이상이면 chaotic
    // 뒤로는 가능하지만 앞으로는 못감, 따라서 "> 2"
    for i in 0..<n {
        let donating = (q[i] - 1 - i)
        if  donating > 2 {
            print("Too chaotic")
            return
        }
    }
    
    while i < n-1 {
        if arr[i] < arr[i+1] {
            i += 1
            continue
        }
        
        let tmp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = tmp
        result += 1

        if i != 0 {
            i -= 1
        }
        
        print(i, arr)
    }
    
    print(result)
    
}

minimumBribes(q: [1, 2, 5, 3, 7, 8, 6, 4])
