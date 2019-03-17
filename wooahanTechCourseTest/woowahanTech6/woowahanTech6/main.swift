//
//  main.swift
//  woowahanTech6
//
//  Created by woong on 17/03/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

func solution(_ totalTicket:Int, _ logs:[String]) -> [String] {
    
    var now : (id: String, time: Int) = (id: "", time: 0)
    var success = [String]()
    var time: Int
    
    for l in logs {
        let log = l.split(separator: " ")
        let id = String(log[0])
        
        // 대문자 방지
        if(id.isUppercased) {
            continue
        }
        let order = String(log[1])
        let t = log[2].split(separator: ":")
        time = (Int(t[1])! * 60) + Int(t[2])!
        
        if (order == "request") {
            if(now.id == "") {
                now = (id:id, time: time)
            } else if ((time - now.time) >= 60) {
                // 이미 현재 유저가 있고 1분이 지나고 요청이 들어옴
                // --> 현재 유저 success, 새로운 유저 등록
                success.append(now.id)
                now = (id:id, time: time)
                print(success, now)
            }
        } else if (order == "leave") {
            if ( (time - now.time) >= 60 ) {
                success.append(now.id)
                now.id = ""
                now.time = 0
            } else {
                now = (id: "", time: 0)
            }
        }
        
        // 티켓 소진시 종료
        if (totalTicket == success.count) {
            return success.sorted()
        }
    }
    
    if( (3660 - now.time) >= 60 ) {
        success.append(now.id)
    }
    
    return success.sorted()
}

extension String {
    var isUppercased: Bool {
        for c in utf8 where (97...122) ~= c { return false }
        return true
    }
}

print(solution(2000, [
    "woni request 09:12:29",
    "brown request 09:23:11",
    "brown leave 09:23:44",
    "jason request 09:33:51",
    "jun request 09:33:56",
    "cu request 09:34:02"
    ])
)
