//
//  main.swift
//  BOJ_1110
//
//  Created by woong on 03/07/2019.
//  Copyright © 2019 woong. All rights reserved.
//

guard let input = readLine().map({Int($0)!}) else {fatalError()}

var count = 0
var result = input

func operate(_ n: Int) -> Int {
    let n1 = n/10
    let n2 = n%10
    let n3 = n1 + n2
    let new = n2*10 + (n3%10)
    count += 1
    return new == input ? -1 : new
}

while result >= 0 {
    result = operate(result)
}
print(count)
