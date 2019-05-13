//
//  main.swift
//  FizzBuzz
//
//  Created by woong on 18/02/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//    1에서 100까지 출력
//    3의 배수는 Fizz 출력
//    5의 배수는 Buzz 출력
//    3과 5의 공배수는 FizzBuzz 출력
//    즉, 1부터 100까지 숫자를 출력하면서 3의 배수는 숫자 대신 "Fizz", 5의 배수는 숫자 대신 "Buzz", 3과 5의 공배수는 숫자 대신 "FizzBuzz"를 출력하면 됩니다.


for i in 0..<100 {
    if (i % 3 == 0) && (i % 5 == 0) {
        print("FizzBuzz")
    } else if (i % 3 == 0) {
        print("Fizz")
    } else if (i % 5 == 0) {
        print("Buzz")
    } else {
        print(i)
    }
}
