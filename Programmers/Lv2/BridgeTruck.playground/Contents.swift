// 스택/큐
// 다리를 지나는 트럭
// https://programmers.co.kr/learn/courses/30/lessons/42583?language=swift

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    
    var onBridge: [Int] = []
    var times: [Int] = []
    var total = 0
    var w = weight
    
    var waits = truck_weights
    
    
    
    while !waits.isEmpty || !onBridge.isEmpty {
        total += 1
        
        // 큐의 첫번째가 시간이 다 됐으면 pop
        if let time = times.first, total - time == bridge_length {
            times.removeFirst()
            w += onBridge.removeFirst()
        }
        
        // 트럭이 들어갈 수 있으면
        if let truck = waits.first, truck <= w {
            w -= waits.removeFirst()
            onBridge.append(truck)
            times.append(total)
        }
    }
    
    return total
}

//print(solution(2, 10, [7,4,5,6]))
//print(solution(100, 100, [10]))
print(solution(100, 100, [10,10,10,10,10,10,10,10,10,10]))
