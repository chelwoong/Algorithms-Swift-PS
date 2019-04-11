//
//  main.swift
//  AppJobPair2
//
//  Created by woong on 06/04/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func solution(_ N:String) -> Int{
    var answer = 0
    
    // 팰린드롬은 가운데를 기준으로 양쪽이 짝수개로 구성
    
    var dicN = [Character:Int]()
    var checkOdd = false
    
    // 이미 key값이 있으면 1을 추가하고 없으면 새로 만든다.
    for char in N {
        if let dic = dicN[char] {
            dicN[char] = dic + 1
        } else {
            dicN[char] = 1
        }
    }
    
    
    for (key, value) in dicN {
        // 0은 따로 처리
        if key == "0" {
            continue
        }
        
        // 짝수이면 가능
        if value % 2 == 0 {
            answer += 2
        } else {
            if checkOdd {
                // 홀수를 하나 사용했으면 짝수개만
                answer += value/2
            } else {
                // 아직 홀수를 안 썼으면 다 넣기
                answer += value
                checkOdd = true
            }
        }
    }
    
    // 0은 최대 answer-1개 만큼 들어갈 수 있다.
    if let zero = dicN["0"] {
        if zero <= answer-1 {
            if zero % 2 == 0 {
                answer += 2
            } else {
                if checkOdd {
                    answer += zero/2
                } else {
                    answer += zero
                }
            }
        } else {
            answer += answer-1
        }
    }
    
    return answer
    
}
