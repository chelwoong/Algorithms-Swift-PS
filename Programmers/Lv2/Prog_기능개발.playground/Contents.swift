import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var completes: [Int] = []
    var distribute = 0
    var temp = 0
    var result: [Int] = []
    
    for (i,p) in progresses.enumerated() {
        let need = 100 - p
        var c = need / speeds[i]
        if need % speeds[i] != 0 {
            c += 1
        }
        
        completes.append(c)
    }
    
    distribute = completes[0]
    for dist in completes {
        if distribute < dist {
            distribute = dist
            result.append(temp)
            temp = 1
            continue
        }
        
        temp += 1
    }
    result.append(temp)
    
    return result
}

solution([93,30,55], [1,30,5])
