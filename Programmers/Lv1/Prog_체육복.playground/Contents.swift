import Foundation

//func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
//
//    var result = n - lost.count
//    var serve = reserve
//    var lost = lost
//
//    for l in lost {
//        if serve.contains(l), let index = serve.firstIndex(of: l), let lostIndex = lost.firstIndex(of: l)  {
//            serve.remove(at: index)
//            lost.remove(at: lostIndex)
//            result += 1
//            continue
//        }
//    }
//
//
//    for l in lost {
//        print(l)
//
//
//        for (i, r) in serve.enumerated() {
//            if l-1 == r {
//                serve.remove(at: i)
//                print("-1",i, serve)
//                result += 1
//                break
//            } else if l+1 == r {
//                serve.remove(at: i)
//
//                print("+1",i, serve)
//                result += 1
//                break
//            }
//            print("\(i), \(r)")
//        }
//    }
//
//    return result
//}


// filter를 통한 중복체크!!!
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    // 예비로 가져온 학생이 잃어버리면 빌려줄 수 없다.
    var losted = lost.filter{!reserve.contains($0)}
    var reversed = reserve.filter {!lost.contains($0)}
    
    var result = n - losted.count
    
    for l in losted {
        for (i, r) in reversed.enumerated() {
            if l-1 == r {
                reversed.remove(at: i)
                result += 1
                break
            } else if l+1 == r {
                reversed.remove(at: i)
                result += 1
                break
            }
        }
    }
    
    return result
}

print(solution(9, [2,4,7,8], [3,6,9]))
print(solution(5, [2,4], [3,5]))
print(solution(24, [12, 13, 16, 17, 19, 20, 21, 22], [1, 22, 16, 18, 9, 10]))
print(solution(3, [1,2], [2,3]))

