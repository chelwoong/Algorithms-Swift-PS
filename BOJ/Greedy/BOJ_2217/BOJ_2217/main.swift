//
//  main.swift
//  BOJ_2217
//
//  Created by woong on 28/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

// 로프의 개수 n, 로프의 중량이 버틸 수 있는 무게 k, 현재 최대중량 c
// k중 가장 큰 값 == c
// 그 다음 가장 큰 k x 2 > c ? c = kx2 : c
// 그 다음 가장 큰 k x 3 > c ...

guard let input = readLine().map({Int($0)!}) else {fatalError()}

var ks: [Int] = []
var c = 0

for _ in 0..<input {
    if let i = readLine().map({Int($0)!}) {
        ks.append(i)
    }
}
ks.sort(by: >)

for i in 1...input {
    let current = ks[i-1] * i
    if current > c {
        c = current
    }
}

print(c)
