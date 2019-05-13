//
//  main.swift
//  BOJ_1406
//
//  Created by woong on 31/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

// | a | b | c |

if let input = readLine() {
    var text = Array(input)
    let n = Int(readLine() ?? "0") ?? 0

    var cursor = text.count

    for _ in 0..<n {
        if let command = readLine()?.split(separator: " ") {
            switch command[0] {
            case "L":
                if cursor != 0 {
                    cursor -= 1
                }
            case "D":
                if cursor < text.count {
                    cursor += 1
                }
            case "B":
                if cursor != 0 {
//                    text.remove(at: text.index(text.startIndex, offsetBy: cursor - 1))
                    text.remove(at: cursor - 1)
                    cursor -= 1
                }
            default:
//                text.insert(Character(String(command[1])), at: text.index(text.startIndex, offsetBy: cursor))
                text.insert(Character(String(command[1])), at: cursor)
                cursor += 1
            }
            
//            if command[0] == "L" {
//                if cursor > 0 {
//                    cursor -= 1
//                }
//            } else if command[0] == "D" {
//                if cursor < text.count {
//                    cursor += 1
//                }
//            } else if command[0] == "B" {
//                if cursor > 0 {
//                    text.remove(at: text.index(text.startIndex, offsetBy: cursor - 1))
//                    cursor -= 1
//                }
//            } else {
//                text.insert(Character(command[1]), at: text.index(text.startIndex, offsetBy: cursor))
//                cursor += 1
//            }
        }
    }
    
    for i in 0..<text.count {
        print(text[i], terminator: "")
    }
}
