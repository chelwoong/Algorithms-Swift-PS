//
//  main.swift
//  BOJ_11656
//
//  Created by woong on 30/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

// 접미사 배열

if let input = readLine() {
    var suffixes: [String] = [input]

    var str = input
    for _ in 0..<str.count - 1 {
        str.removeFirst()
        suffixes.append(str)
    }

    for suffixe in suffixes.sorted() {
        print(suffixe)
    }
}

// 다른 풀이
// String.suffix(maxLength: Int) 이용 // 뒤에서부터 주어진 길이만큼 출력 

//let s = readLine()!
//var res = [String]()
//
//for i in 1...s.count {
//    res.append(String(s.suffix(i)))
//}
//
//for j in res.sorted() {
//    print(j)
//}
