//
//  main.swift
//  woowahanTech3
//
//  Created by woong on 17/03/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func solution(_ word:String) -> String {
    let Alpha = "ABCDEFGHIZKLMNOPQRSTUVWXYZ"
    let alpha = "abcdefghijklmnopqrstuvwxyz"
    var key = [Character: Character]()
    var ans = ""
    
    for i in 0...25 {
        let v1 = Alpha.index(Alpha.startIndex, offsetBy: 25 - i)
        let k1 = Alpha.index(Alpha.startIndex, offsetBy: i)
        
        let v2 = alpha.index(alpha.startIndex, offsetBy: 25 - i)
        let k2 = alpha.index(alpha.startIndex, offsetBy: i)
        
        key.updateValue(Alpha[v1], forKey: Alpha[k1])
        key.updateValue(alpha[v2], forKey: alpha[k2])
    }
    
    for w in word {
        print(String(w))
        if (String(w) == " ") {
            ans += " "
        } else {
            if let str = key[w] {
                ans += String(str)
            }
        }
    }
    
    return ans
}


solution("I love you")




