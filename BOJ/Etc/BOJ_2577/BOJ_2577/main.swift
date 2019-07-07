//
//  main.swift
//  BOJ_2577
//
//  Created by woong on 03/07/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

guard let a = readLine().map({Int($0)!}) else {fatalError()}
guard let b = readLine().map({Int($0)!}) else {fatalError()}
guard let c = readLine().map({Int($0)!}) else {fatalError()}

let numString = String(a*b*c)
var numbers = [Int](repeating: 0, count: 10)

for s in numString {
    
    if let n = Int(String(s)) {
        numbers[n] += 1
    }
}

//while n > 0 {
//    let x = n % 10
//    characters[x] += 1
//    n = n / 10
//}

for i in numbers {
    print(i)
}


