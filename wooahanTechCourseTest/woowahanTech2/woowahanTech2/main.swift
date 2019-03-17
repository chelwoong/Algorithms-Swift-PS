//
//  main.swift
//  woowahanTech2
//
//  Created by woong on 17/03/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

var lands:[[Int]] =  [ [10, 0, 30, 5], [0, 30, 20, 50], [30, 30, 40, 40] ]
var wells:[[Int]] = [ [15, 15, 25, 25], [40, 10, 50, 20] ]
var point:[Int] = [10, 10, 30, 30]
var ans: Bool = false

var map = [[Int]](repeating: Array(repeating: 0, count: 1000000), count: 1000000)

for land in lands {
    for x in land[0]..<land[2] {
        for y in land[1]..<land[3] {
            map[x][y] = 1
        }
    }
}

for well in wells {
    for x in well[0]..<well[2] {
        for y in well[1]..<well[3] {
            if(map[x][y] != 1) {
                map[x][y] = 2
            }
        }
    }
}

for x in point[0]..<point[2] {
    for y in point[1]..<point[3] {
        if(map[x][y] == 2) {
            ans = true
        }
    }
}

print(ans)


