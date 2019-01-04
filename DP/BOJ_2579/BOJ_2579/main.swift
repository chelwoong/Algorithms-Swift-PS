//
//  main.swift
//  BOJ_2579
//
//  Created by woong on 03/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

// 접근 1
// 현재 계단을 밟는 경우는 전전을 밟고 오는 경우와 전을 밟고 오는 경우. n-2 -> n 또는 n-1 -> n
// 하지만 n-1이 두번 연속이후 인지 아닌지 알 수 없다.
// 따라서  n-1을 밟고 n을 밟는 경우는 당연히 n-2는 밟을 수 없으므로
// n-2까지의 최대와 n-3까지의 최대 + n-1 을 밟는 경우를 비교,
// dp[n-3] + a[n-1] 과 dp[n-2]를 비교해서 선택한다.

//if let input = readLine() {
//    let n: Int = Int(input) ?? 0
//    var a: [Int] = []
//    for _ in 0..<n {
//        a.append(Int(readLine()!) ?? 0)
//    }
//    var dp: [Int] = [Int](repeating: 0, count: n+1)
//
//    dp[1] = a[0]
//    dp[2] = a[1] + a[0]
//    if n > 2 {
//        for i in 3..<n+1 {
//            dp[i] = (dp[i-3]+a[i-2] > dp[i-2]) ? (dp[i-3] + a[i-2] + a[i-1]) : (dp[i-2] + a[i-1])
//        }
//    }
//
//    print(dp[n])
//}

// 접근 2
// dp[0]: 현재 밟지 않은 경우에서의 최대
// dp[1]: 첫번째 밟았을 때의 최대
// dp[2]: 두번째 밟았을 때의 최대

if let input = readLine() {
    let n: Int = Int(input) ?? 0
    var a: [Int] = []
    for _ in 0..<n {
        a.append(Int(readLine()!) ?? 0)
    }
    var dp: (zero: Int, oneStep: Int, twoStep: Int) = (0, 0, 0)
    
    for i in 0..<n {
        let temp = dp.oneStep > dp.twoStep ? dp.oneStep : dp.twoStep
        dp.twoStep = dp.oneStep + a[i]
        dp.oneStep = dp.zero + a[i]
        dp.zero = temp
    }
    
    print(dp.oneStep > dp.twoStep ? dp.oneStep : dp.twoStep)
}

