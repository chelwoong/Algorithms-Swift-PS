//
//  main.swift
//  kakaoBlind2019_2
//
//  Created by woong on 15/03/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

let N: Int = 5
let stages: [Int] = [2, 1, 2, 6, 2, 4, 3, 3]
var clear = [Int](repeating: 0, count: N+1)
var n: Int = 0
var failRate = [(rate: Double, stage: Int)](repeating: (0, 0), count: N)
var ans = [Int]()

for stage in stages {
    clear[stage-1] += 1
}

n += clear[N]
for i in (0..<N).reversed() {
    n += clear[i]
    failRate[i] = (rate: Double(clear[i]) / Double(n), stage: i+1)
}

failRate.sort { (a, b) -> Bool in
    if(a.rate == b.rate) {
        return a.stage < b.stage
    }
    return a.rate > b.rate
}
//failRate.sort(by: {$0.rate > $1.rate})

for i in failRate {
    ans.append(i.stage)
}

print(ans)
