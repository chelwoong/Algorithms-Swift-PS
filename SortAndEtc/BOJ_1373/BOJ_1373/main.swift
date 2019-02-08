//
//  main.swift
//  BOJ_1373
//
//  Created by woong on 08/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

// 2진수 8진수
// 2진수가 주어졌을 때, 8진수로 변환하는 프로그램을 작성하시오.
//

//import Foundation

//extension Int {
//    func square(_ num: Int) -> Int {
//        var squaredNumber = 1
//        for _ in 0..<num {
//            squaredNumber *= self
//        }
//        return squaredNumber
//    }
//}
//
//extension String {
//    // 2 ~ 36 진법
//    func numberSystemConvert(from c: Int, to p: Int) -> String {
//        let matchingList = Array("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ")
//        var n = Array(self)
//        var decimal = 0
//        var resultArr: [Character] = []
//        var result = ""
//
//        // get decimal
//        for i in 0..<n.count {
//            if let idx = matchingList.firstIndex(of: n[n.count - 1 - i]) {
//                let value = idx
//                if value >= c {
//                    return "Check your value. value more than `from` number system."
//                }
//                decimal += value * c.square(i)
//            } else {
//                return "Can't matching character"
//            }
//        }
//
//        if decimal == 0 {
//            return "0"
//        }
//
//        // convert p number system
//        while decimal > 0 {
//            let idx = decimal % p
//            decimal /= p
//            resultArr.append(matchingList[idx])
//        }
//        // make return value
//        for i in 0..<resultArr.count {
//            result += String(resultArr[resultArr.count - 1 - i])
//        }
//
//        return result
//    }
//}
//
////if let n = readLine() {
////    print(n.numberSystemConvert(from: 2, to: 8))
////}
//

if let input = readLine(){
    let n: [Int] = Array(input).reversed().map{Int(String($0)) ?? 0}
//    print(n)
    var result: [Int] = []
    let strided = stride(from: 0, to: n.count, by: 3)
    
    for i in strided {
        if (i+2) <= n.count - 1 {
//            print(i, result)
            let hex = n[i] * 1 + n[i+1] * 2 + n[i+2] * 4
            result.append(hex)
        } else if (i+1) == n.count - 1 {
//            print(i, result)
            let hex = n[i] * 1 + n[i+1] * 2
            result.append(hex)
        } else {
//            print(i, result)
            result.append(n[i])
        }
    }
//    print(result)
    for i in result.reversed() {
        print(i, terminator:"")
    }
}
