//
//  main.swift
//  BOJ_10866
//
//  Created by woong on 25/01/2019.
//  Copyright © 2019 woong. All rights reserved.
//

//import Foundation

//    push_front X: 정수 X를 덱의 앞에 넣는다.
//    push_back X: 정수 X를 덱의 뒤에 넣는다.
//    pop_front: 덱의 가장 앞에 있는 수를 빼고, 그 수를 출력한다. 만약, 덱에 들어있는 정수가 없는 경우에는 -1을 출력한다.
//    pop_back: 덱의 가장 뒤에 있는 수를 빼고, 그 수를 출력한다. 만약, 덱에 들어있는 정수가 없는 경우에는 -1을 출력한다.
//    size: 덱에 들어있는 정수의 개수를 출력한다.
//    empty: 덱이 비어있으면 1을, 아니면 0을 출력한다.
//    front: 덱의 가장 앞에 있는 정수를 출력한다. 만약 덱에 들어있는 정수가 없는 경우에는 -1을 출력한다.
//    back: 덱의 가장 뒤에 있는 정수를 출력한다. 만약 덱에 들어있는 정수가 없는 경우에는 -1을 출력한다.

class Deque {
    var deque: [Int] = []

    func push_front(x: Int) {
        deque.insert(x, at: 0)
    }

    func push_back(x: Int) {
        deque.append(x)
    }
    func pop_front() -> Int {
        return deque.count == 0 ? -1 : deque.removeFirst()
    }
    func pop_back() -> Int {
        return deque.count == 0 ? -1 : deque.removeLast()
    }
    func size() -> Int {
        return deque.count
    }
    func empty() -> Int {
        return deque.count == 0 ? 1 : 0
    }
    func front() -> Int {
        return deque.first ?? -1
    }
    func back() -> Int {
        return deque.last ?? -1
    }
}

if let n = Int(readLine() ?? "0") {
    let deque = Deque.init()
    for _ in 0..<n {
        if let order = readLine()?.split(separator: " ") {
            switch order[0] {
            case "push_front":
                deque.push_front(x: Int(order[1]) ?? 0)
            case "push_back":
                deque.push_back(x: Int(order[1]) ?? 0)
            case "pop_front":
                print(deque.pop_front())
            case "pop_back":
                print(deque.pop_back())
            case "size":
                print(deque.size())
            case "empty":
                print(deque.empty())
            case "front":
                print(deque.front())
            case "back":
                print(deque.back())
            default:
                print("Nil")
            }
        }

    }
}

