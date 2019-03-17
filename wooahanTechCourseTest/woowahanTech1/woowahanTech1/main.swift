//
//  main.swift
//  woowahanTech1
//
//  Created by woong on 17/03/2019.
//  Copyright © 2019 woong. All rights reserved.
//

import Foundation

var ans = [Int](repeating: 0, count: 9)
var money = 50237

var temp = money

ans[0] = temp / 50000
temp %= 50000

ans[1] = temp / 10000
temp %= 10000

ans[2] = temp / 5000
temp %= 5000

ans[3] = temp / 1000
temp %= 1000

ans[4] = temp / 500
temp %= 500

ans[5] = temp / 100
temp %= 100

ans[6] = temp / 50
temp %= 50

ans[7] = temp / 10
temp %= 10

ans[8] = temp

print(ans)


