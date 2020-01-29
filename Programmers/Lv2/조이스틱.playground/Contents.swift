/**
 * Greedy
 * https://programmers.co.kr/learn/courses/30/lessons/42860
 */

import Foundation

func solution(_ name:String) -> Int {


    var nameAsciiArray = [Int]()

    // 모두 A이면 0
    if String(repeating: "A", count: name.count) == name {
        return 0
    }

    var count = 0

    // 글자 조정 횟수
    for c in name {
        var cnt = Int(c.asciiValue!) - 65

        if cnt > 13 {
            cnt = 26-cnt
        }

        count += cnt
        nameAsciiArray.append(cnt)
    }

    var myAsciiArray = [Int](repeating: 0, count: name.count)
    myAsciiArray[0] = nameAsciiArray[0]

    var idx = 0
    // 이동 횟수
    while myAsciiArray != nameAsciiArray {
        var right = idx
        var rCnt = 0
        while myAsciiArray[right] == nameAsciiArray[right] {
            right += 1
            if right >= name.count {
                right = 0
            }
            rCnt += 1
        }

        var left = idx
        var lCnt = 0
        while myAsciiArray[left] == nameAsciiArray[left] {
            left -= 1
            if left < 0 {
                left = name.count - 1
            }
            lCnt += 1
        }

        if rCnt <= lCnt {
            count += rCnt
            idx = right
        } else {
            count += lCnt
            idx = left
        }
        myAsciiArray[idx] = nameAsciiArray[idx]
    }


    return count
}

solution("JEROEN")
solution("JAN")
Character("N").asciiValue
solution("AAAAAN")
solution("AAAANA")
solution("AABAAAAAAAB")

//AABAAAAAAAB 6
//AAAAAAAA 0
//ABBBBAAAAABAAA 15
