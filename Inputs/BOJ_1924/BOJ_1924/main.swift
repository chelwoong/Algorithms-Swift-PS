//
//  main.swift
//  BOJ_1924
//
//  Created by woong on 24/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

import Foundation

func checkLeap(year: Int) -> Bool {
    var checkValue: Bool = false
    if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0){
        checkValue = true
    }else {
        checkValue = false
    }
    return checkValue
}

func endDayOfMonth(year: Int, month: Int) -> Int {
    
    var endDay: Int = 0
    let inputMonth: Int = month
    
    let monA: Set = [1,3,5,7,8,10,12]
    let monB: Set = [4,6,9,11]
    
    if monA.contains(inputMonth)  {
        endDay = 31
    }else if monB.contains(inputMonth) {
        endDay = 30
    }
    
    if inputMonth == 2 {
        if checkLeap(year: year) {
            endDay = 29
        }else {
            endDay = 28
        }
    }
    return endDay
}

func getWeekDay(atYear:Int, atMonth:Int, atDay:Int) -> String {
    
    var dayDay:[String] = ["일", "월", "화", "수", "목", "금", "토"]
    var returnValue: String = ""
    var totalDay: Int = 0
    
    for i in 1..<atMonth {
        totalDay += endDayOfMonth(year: atYear, month: i)
    }
    
    var index: Int = 0
    if (totalDay + atDay) % 7 == 0 {
        index = 6
    }else {
        index = (totalDay + atDay) % 7 - 1
    }
    
    returnValue = dayDay[index]
    
    return "\(atYear)년 \(atMonth)월 \(atDay)일은 " + returnValue + "요일 입니다."
}

print(getWeekDay(atYear: 2007, atMonth: 1, atDay: 1))
