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
    
    // 뇌물은 최대 2,
    // 앞에가 뒤로 밀리는건 얼마든지 가능하지만
    // 뒤가 앞으로 올라가는건 최대 2번까지 가능
    for i in 0..<n {
        let bribe = (q[i] - 1 - i)
        if  bribe > 2 {
            print("Too chaotic")
            return
        }
    }
    
    while i < n-1 {
        if arr[i] < arr[i+1] {
            i += 1
            continue
        }
        print(i)

        let tmp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = tmp
        result += 1

        // 바꾼 애도 더 작을 수 있으니 확인하기 위해
        if i != 0 {
            i -= 1
        }

//        print(i, arr)
    }
    
    
    print(result)
    
}

minimumBribes(q: [1, 2, 5, 3, 7, 8, 6, 4])
