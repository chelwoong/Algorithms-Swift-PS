//
//  main.swift
//  BOJ_11652
//
//  Created by woong on 16/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

// 1111 2222xxr
//if let n = Int(readLine() ?? "0") {
//    
//    var nums: [Int] = []
//    var maxCount = 0
//    var maxNumber = 0
//    var count = 0
//    
//    for _ in 0..<n {
//        nums.append(Int(readLine() ?? "0") ?? 0)
//    }
//    nums.sort()
//    maxCount = 1
//    maxNumber = nums[0]
//    count = 1
//    for i in 1..<n {
//        if nums[i] == nums[i-1] {
//            count += 1
//            if maxCount < count {
//                maxCount = count
//                maxNumber = nums[i-1]
//            }
//        } else {
//            count = 1
//        }
//        
//        
//    }
//    print(maxNumber)
//}

// 다른풀이

var dict : Dictionary<Int,Int> = [:]
let a = Int(readLine()!)!
var num = 0
for _ in 0..<a{
    num = Int(readLine()!)!
    if dict[num] == nil {dict[num] = 1}
    else{dict[num] = dict[num]! + 1}
}
var maxFreq = dict[num]!
var maxNum = num
for(tnum,freq) in dict{
    if (freq > maxFreq) || (freq == maxFreq && tnum < maxNum)  {
        maxFreq = freq
        maxNum = tnum
    }
}
print(maxNum)

