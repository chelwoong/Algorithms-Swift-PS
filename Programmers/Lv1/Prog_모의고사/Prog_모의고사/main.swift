//
//  main.swift
//  Prog_모의고사
//
//  Created by woong on 22/07/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

//func solution(_ answers:[Int]) -> [Int] {
//    let person1 = [1,2,3,4,5]
//    let person2 = [2,1,2,3,2,4,2,5]
//    let person3 = [3,3,1,1,2,2,4,4,5,5]
//
//    var r1 = 0
//    var r2 = 0
//    var r3 = 0
//
//    for i in 0..<answers.count {
//        let p1 = i % person1.count
//        let p2 = i % person2.count
//        let p3 = i % person3.count
//
//        if person1[p1] == answers[i] {
//            r1 += 1
//        }
//
//        if person2[p2] == answers[i] {
//            r2 += 1
//        }
//
//        if person3[p3] == answers[i] {
//            r3 += 1
//        }
//    }
//
//    let m = max(r1, r2, r3)
//    var result: [Int] = []
//
//    if r1 >= m {
//        result.append(1)
//    }
//
//    if r2 >= m {
//        result.append(2)
//    }
//
//    if r3 >= m {
//        result.append(3)
//    }
//    return result
//}

func solution(_ answers:[Int]) -> [Int] {
    let answer = (
        a: [1,2,3,4,5],
        b: [2,1,2,3,2,4,2,5],
        c: [3,3,1,1,2,2,4,4,5,5]
    )
    
    var point = [1:0, 2:0, 3:0]
    
    for (i, v) in answers.enumerated() {
        if v == answer.a[i%5] {
            point[1] = point[1]! + 1
        }
        
        if v == answer.b[i%8] {
            point[2] = point[2]! + 1
        }
        
        if v == answer.c[i%10] {
            point[3] = point[3]! + 1
        }
    }
    
    
    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max()}.map{ $0.key }
}

print(solution([1,2,3,4,5]))

