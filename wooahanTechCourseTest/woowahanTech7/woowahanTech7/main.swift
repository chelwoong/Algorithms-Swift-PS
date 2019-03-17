//
//  main.swift
//  woowahanTech7
//
//  Created by woong on 17/03/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func solution(_ cryptogram:String) -> String {
    var temp = cryptogram
    var ans = cryptogram
    var check: Bool = true
    
    while check {
        check = false
        for i in 1..<temp.count {
            let before = temp.index(temp.startIndex, offsetBy: i-1)
            let curr = temp.index(temp.startIndex, offsetBy: i)
            
            if(temp[before] == temp[curr]) {
                check = true
                ans.remove(at: before)
                ans.remove(at: before)
                break
            }
        }
        if(ans.count == 0) {
            return ""
        }
        temp = ans
        
    }
    return ans
}

print(solution("zyelleyz"))

