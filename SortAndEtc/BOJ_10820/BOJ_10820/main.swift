//
//  main.swift
//  BOJ_10820
//
//  Created by woong on 28/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

// 소문자, 대문자, 숫자, 공백의 개수를 공백으로 구분해 출력


func main() {
    while true {
        guard let input = readLine() else { return }
        let str = Array(input)
            var underStr = 0
            var upperStr = 0
            var number = 0
            var space = 0
            
        for i in 0..<str.count {
            if str[i] == " " {
                space += 1
            } else if str[i] >= "a" && str[i] <= "z" {
                underStr += 1
            } else if str[i] >= "A" && str[i] <= "Z" {
                upperStr += 1
            } else {
                number += 1
            }
        }
        
        print("\(underStr) \(upperStr) \(number) \(space)")
    }
}

main()
