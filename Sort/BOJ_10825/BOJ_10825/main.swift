//
//  main.swift
//  BOJ_10825
//
//  Created by woong on 15/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

struct student {
    let name: String
    let kor: Int
    let eng: Int
    let math: Int
}

if let n = Int(readLine() ?? "0") {
    
    var stu: [student] = []
    
    for _ in 0..<n {
        if let s = readLine()?.split(separator: " ") {
            stu.append(student(name: String(s[0]), kor: Int(s[1]) ?? 0, eng: Int(s[2]) ?? 0, math: Int(s[3]) ?? 0))
        }
    }
    
    stu.sort(by: {
        $0.kor != $1.kor
            ? $0.kor > $1.kor
            : ($0.eng != $1.eng
                ? $0.eng < $1.eng
                : ($0.math != $1.math
                    ? $0.math > $1.math
                    : $0.name < $1.name
                    )
                )
    })
    
    for i in 0..<n {
        print("\(stu[i].name)")
    }
    
}

