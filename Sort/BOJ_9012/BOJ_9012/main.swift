//
//  main.swift
//  BOJ_9012
//
//  Created by woong on 18/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

class VPN {
    var vpnStack: [String] = []
    var bool: Bool = true
    
    func check(x: Character) {
        if x == "(" {
            vpnStack.append("(")
        } else {
            if vpnStack.popLast() == nil {
                bool = false
            }
        }
    }
    
    func count() -> Int {
        return vpnStack.count
    }
}

if let input = Int(readLine() ?? "0") {

    
    for _ in 0..<input {
        let ps = Array(readLine() ?? "")
        let vpn = VPN()
        for i in 0..<ps.count {
            vpn.check(x: ps[i])
        }
        (vpn.count() != 0) || !vpn.bool ? print("NO") : print("YES")
    }
}

// 다른풀이

//func isValidPS(_ str: String) -> Bool {
//    var standard = 0
//    for char in str {
//        if char == "(" {
//            standard += 1
//        } else if char == ")" {
//            standard -= 1
//        }
//        
//        if standard < 0 {
//            return false
//        }
//    }
//    
//    return standard == 0
//}
//if let inputNumber = Int(readLine() ?? "") {
//    for _ in 0..<inputNumber {
//        print(isValidPS(readLine() ?? "") ? "YES" : "NO")
//    }
//}

