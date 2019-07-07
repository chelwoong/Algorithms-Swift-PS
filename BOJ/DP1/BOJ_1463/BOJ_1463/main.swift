//
//  main.swift
//  BOJ_1463
//
//  Created by woong on 27/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

//    정수 X에 사용할 수 있는 연산은 다음과 같이 세 가지 이다.
//
//    X가 3으로 나누어 떨어지면, 3으로 나눈다.
//    X가 2로 나누어 떨어지면, 2로 나눈다.
//    1을 뺀다.
//    정수 N이 주어졌을 때, 위와 같은 연산 세 개를 적절히 사용해서 1을 만들려고 한다. 연산을 사용하는 횟수의 최솟값을 출력하시오.

//import Foundation

// DP

//let n = Int(readLine()!)!
//var a: [Int] = [Int](repeating: 0, count: n+1)
//
//if n > 1 {
//    for i in 2...n {
//        a[i] = a[i-1] + 1
//        if (i % 3) == 0 {
//            let temp = a[i/3] + 1
//            if a[i] > temp {
//                a[i] = temp
//            }
//        }
//        if (i%2) == 0 {
//            let temp = a[i/2]+1
//            if (a[i] > temp) {
//                a[i] = temp
//            }
//        }
//    }
//
//}
//print(a[n])

// 좋은풀이

var memo = [1:0, 2:1, 3:1]

func dp(_ n: Int) -> Int {
    
    var a = 0, b = 0
    while true {
        if memo.keys.contains(n) {
            break
        }
        
        if n % 3 == 0 {
            a = dp(n / 3) + 1
        } else if (n-1) % 3 == 0 {
            a = dp((n-1) / 3) + 2
        } else if (n-2) % 3 == 0 {
            a = dp((n-2) / 3) + 3
        }
        
        if n % 2 == 0 {
            b = dp(n / 2) + 1
        } else if (n-1) % 2 == 0 {
            b = dp((n-1) / 2) + 2
        }
        
        memo[n] = a > b ? b : a
    }
    
    return memo[n] ?? 0
}

if let input = readLine() {
    
    let n = Int(input) ?? 0
    print(dp(n))
}
