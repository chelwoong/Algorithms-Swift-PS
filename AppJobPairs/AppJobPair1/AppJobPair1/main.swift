//
//  main.swift
//  AppJobPair1
//
//  Created by woong on 06/04/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func solution(_ a:String,_ b:String) -> Bool
{
    var answer = false
    
    // Set은 중복을 허용하지 않기 때문에 a, b를 Set으로 만들어 비교한다.
    // 대소문자 구분을 없애기 위해 모두 소문자로 변환
    
    var setA = Set<Character>()
    var setB = Set<Character>()
    
    for char in a.lowercased() {
        setA.insert(char)
    }
    
    for char in b.lowercased() {
        setB.insert(char)
    }
    
    
    answer = setA == setB ? true : false
    
    return answer
    
}
