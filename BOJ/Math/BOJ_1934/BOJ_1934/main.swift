//
//  main.swift
//  BOJ_1934
//
//  Created by woong on 01/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

// 최소 공배수
/*
두 자연수 A와 B에 대해서, A의 배수이면서 B의 배수인 자연수를 A와 B의 공배수라고 한다. 이런 공배수 중에서 가장 작은 수를 최소공배수라고 한다.
예를 들어, 6과 15의 공배수는 30, 60, 90등이 있으며, 최소 공배수는 30이다.

두 자연수 A와 B가 주어졌을 때, A와 B의 최소공배수를 구하는 프로그램을 작성하시오.

입력
첫째 줄에 테스트 케이스의 개수 T(1 ≤ T ≤ 1,000)가 주어진다. 둘째 줄부터 T개의 줄에 걸쳐서 A와 B가 주어진다. (1 ≤ A, B ≤ 45,000)

출력
첫째 줄부터 T개의 줄에 A와 B의 최소공배수를 입력받은 순서대로 한 줄에 하나씩 출력한다.
*/

// greatest common divisor
func getGcd(_ a: Int, _ b: Int) -> Int {
    return (a%b == 0) ? b : getGcd(b, a % b)
}

// least common multiple
func getLcm(_ a: Int, _ b: Int) -> Int {
    return (a * b) / getGcd(a, b)
}

if let testCount = readLine().map({Int($0) ?? 0}) {
    for _ in 0..<testCount {
        if let input = readLine()?.split(separator: " ").map({Int($0) ?? 0}) {
            print(getLcm(input[0], input[1]))
        }
    }
}
