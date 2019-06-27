//
//  main.swift
//  BOJ_11399
//
//  Created by woong on 18/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

guard let n = readLine().map({Int($0)!}) else {fatalError()}
guard var people = readLine()?.split(separator: " ").map({Int($0)!}) else {fatalError()}

people.sort()

var result = 0
var temp = 0

for p in people {
    temp += p
    result += temp
}

print(result)
