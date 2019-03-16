//
//  main.swift
//  kakao_blind_2019_1
//
//  Created by woong on 15/03/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func solution(_ record:[String]) -> [String] {
    var key = [String : String]()
    var ans = [String]()
    
    for event in record {
        var a = event.split(separator: " ").map{String($0)}
        if(a[0] == "Enter" || a[0] == "Change") {
            key[a[1]] = a[2]
        }
    }
    
    for event in record {
        var a = event.split(separator: " ").map{String($0)}
        
        if(a[0] == "Enter" ) {
            ans.append(key[a[1]]! + "님이 들어왔습니다.")
        } else if (a[0] == "Leave" ) {
            ans.append(key[a[1]]! + "님이 나갔습니다.")
        }
    }
    return ans
}
