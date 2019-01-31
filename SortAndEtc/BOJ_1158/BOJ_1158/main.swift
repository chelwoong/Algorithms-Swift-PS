//
//  main.swift
//  BOJ_1158
//
//  Created by woong on 31/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

//조세퍼스 문제는 다음과 같다.
//
//1번부터 N번까지 N명의 사람이 원을 이루면서 앉아있고, 양의 정수 M(≤ N)이 주어진다. 이제 순서대로 M번째 사람을 제거한다. 한 사람이 제거되면 남은 사람들로 이루어진 원을 따라 이 과정을 계속해 나간다. 이 과정은 N명의 사람이 모두 제거될 때까지 계속된다. 원에서 사람들이 제거되는 순서를 (N, M)-조세퍼스 순열이라고 한다. 예를 들어 (7, 3)-조세퍼스 순열은 <3, 6, 2, 7, 5, 1, 4>이다.
//
//N과 M이 주어지면 (N,M)-조세퍼스 순열을 구하는 프로그램을 작성하시오.
//

//7, 7
//
//i = 6
//1 2 3 4 5 6 7_

// i = 12 % 6 = 0
//1_ 2 3 4 5 6

// i = 7 % 5 = 2
// 2 3 4 5 6


if let input = readLine()?.split(separator: " ").map({ Int($0) ?? 0 }) {
    
    var people: [Int] = []
    var result: [Int] = []
    
    let addCount = input[1] - 1
    var idx = addCount
    
    for i in 1...input[0] {
        people.append(i)
    }
    
    for _ in 0..<people.count {
        result.append(people.remove(at: idx))

        idx += addCount
        if people.count != 0 {
            idx %= people.count
        }
        
    }
    
//    print("<", terminator: "")
//    for i in 0..<result.count - 1 {
//        print("\(result[i]), ", terminator: "")
//    }
//    print("\(result[result.count-1])>", terminator:"")
    
    print("<"+result.map {String($0)}.joined(separator: ", ")+">" )
}
