//
//  main.swift
//  BOJ_1931
//
//  Created by woong on 18/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

guard let n = readLine().map({Int($0)!}) else {fatalError()}

var meetings = [(s: Int, e: Int)]()
var endTime = -1
var count = 0

for _ in 0..<n {
    guard let meet = readLine()?.split(separator: " ").map({Int($0)!}) else {fatalError()}
    
    meetings.append((s: meet[0], e: meet[1]))
}

meetings.sort {
    // 끝나는 시간이 같다면 시작 시간으로 정렬
    if $0.e == $1.e {
        return $0.s < $1.s
    } else {
        return $0.e < $1.e
    }
    
}

for m in meetings {
    if endTime <= m.s {
        count += 1
        endTime = m.e
    }
}

print(count)
