//
//  main.swift
//  AppjobPair3
//
//  Created by woong on 06/04/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func solution(_ grade:[Int], _ max_diff:Int) -> Int {
    
    // 우선 내림차순으로 정렬한다.
    // 첫번째 원소부터 나머지 원소들과의 차이를 보고 팀원의 수를 센다.
    // 각 원소가 끝날 때 마다 현재 가장 많은 팀원원과 비교해 교체한다.
    
    var arr = grade.sorted(by: >)
    var member = 0
    for i in 0..<arr.count {
        var temp = 1
        for j in i..<arr.count-1 {
            if (arr[i] - arr[j+1]) <= max_diff {
                temp += 1
            } else {
                // 정렬했으므로 max_diff보다 큰 순간 나머지는 볼 필요가 없다.
                continue
            }
        }
        if temp > member {
            member = temp
        }
    }
    
    return member
    
}
