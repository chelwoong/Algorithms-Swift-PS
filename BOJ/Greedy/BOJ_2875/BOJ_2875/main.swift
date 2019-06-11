//
//  main.swift
//  BOJ_2875
//
//  Created by woong on 10/06/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

guard let inputs = readLine()?.split(separator: " ") else { fatalError() }

guard var w = Int(inputs[0]) else { fatalError() }
guard var m = Int(inputs[1]) else { fatalError() }
guard var k = Int(inputs[2]) else { fatalError() }
var team = 0

// MARK: solution 1
print(min(w/2, m, (w+m-k)/3))


// MARK: solution 2
if (w/2) >= m {
    team = m

    k -= w - team*2

    if k > 0 {
        team -= k/3

        if k%3 > 0 {
            team -= 1
        }
    }

} else {
    team = w/2
    k -= m - team

    if k > 0 {
        team -= k/3
        
        
        if k%3 > 0 {
            team -= 1
        }
    }
}

team >= 0 ? print(team) : print(0)

// MARK: solution 3
while k > 0 {
    k -= 1
    
    if w/2 >= m {
        w -= 1
    } else {
        m -= 1
    }
    
}

print(w/2 >= m ? m : w/2)
