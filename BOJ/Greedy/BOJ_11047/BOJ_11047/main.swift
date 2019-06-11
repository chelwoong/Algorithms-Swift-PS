//
//  main.swift
//  BOJ_11047
//
//  Created by woong on 10/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

guard let inputs = readLine()?.split(separator: " ").map({Int($0)!}) else {fatalError()}

let n = inputs[0]
var k = inputs[1]

var coins: [Int] = [Int](repeating: 0, count: n)
var result = 0

for i in 0..<n {
    if let coin = readLine().map({Int($0)!}) {
        coins[i] = coin
    }
}

for i in coins.reversed() {
    result += k / i
    k %= i
}

print(result)
