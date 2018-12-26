//
//  main.swift
//  BOJ_1924
//
//  Created by woong on 24/12/2018.
//  Copyright © 2018 woong. All rights reserved.
//

import Foundation

let userCase = readLine()!
let inputs = userCase.components(separatedBy: " ")

let inputMonth = inputs[0]
let inputDay = inputs[1]
let month: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31] // 해당 월에 대한 일수
// sum에 대한 값을 키로 받아서 값 출력
let dayOfTheWeek: [Int: String] = [0: "SUN", 1: "MON", 2: "TUE", 3: "WED", 4: "THU", 5: "FRI", 6: "SAT"]
var sum = 0

// Month는 12월까지, Day는 31일까지 존재한다는 조건하에 반복 실행
if 1 <= Int(inputMonth)! && Int(inputMonth)! <= 12 && 1 <= Int(inputDay)! && Int(inputDay)! <= 31 {
    for i in 0..<(Int(inputMonth)! - 1) {
        sum += month[i]
    }
    
    sum += Int(inputDay)!
    
    sum = sum % 7
}

print(dayOfTheWeek[sum]!) // 값 출력



//
//func checkLeap(year: Int) -> Bool {
//    var checkValue: Bool = false
//    if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0){
//        print("leap true")
//        checkValue = true
//    }else {
//        print("leap false")
//        checkValue = false
//    }
//    return checkValue
//}
//
//func endDayOfMonth(year: Int, month: Int) -> Int {
//
//    var endDay: Int = 0
//    let inputMonth: Int = month
//
//    let monA: Set = [1,3,5,7,8,10,12]
//    let monB: Set = [4,6,9,11]
//
//    if monA.contains(inputMonth)  {
//        endDay = 31
//    }else if monB.contains(inputMonth) {
//        endDay = 30
//    }
//
//    if inputMonth == 2 {
//        if checkLeap(year: year) {
//            endDay = 29
//        }else {
//            endDay = 28
//        }
//    }
//    return endDay
//}
//
//func getWeekDay(atYear:Int, atMonth:Int, atDay:Int) -> String {
//
//    var dayDay:[String] = ["일", "월", "화", "수", "목", "금", "토"]
//    var returnValue: String = ""
//    var totalDay: Int = 0
//
//    if atMonth > 1 {
//        for i in 1..<atMonth {
//            totalDay += endDayOfMonth(year: atYear, month: i)
//        }
//    } else if atMonth == 1 {
//        totalDay = atDay
//    }
//
//    var index: Int = (totalDay) % 7
//
//    if index > 0 {
//        index = index - 1
//    }
//
//    returnValue = dayDay[index]
//
//    return "\(atYear)년 \(atMonth)월 \(atDay)일은 " + returnValue + "요일 입니다."
//}
//
//print(getWeekDay(atYear: 2007, atMonth: 1, atDay: 1))


