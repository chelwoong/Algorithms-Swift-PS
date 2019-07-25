import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//    1. array의 2번째부터 5번째까지 자르면 [5, 2, 6, 3]입니다.
//    2. 1에서 나온 배열을 정렬하면 [2, 3, 5, 6]입니다.
//    3. 2에서 나온 배열의 3번째 숫자는 5입니다.
    
    var result: [Int] = []
    for command in commands {
        print(command)
        result.append(operate(array, command))
    }
    
    
    return result
}

func operate(_ array: [Int], _ command: [Int]) -> Int {
    
    let i = command[0]-1
    let j = command[1]-1
    var newArr = array[i...j]
    
//    for (i, v) in array.enumerated() {
//        if i >= command[0]-1 && i <= command[1]-1 {
//            newArr.append(v)
//        }
//    }
    newArr.sort()
    let result = Array(newArr)
    
    return result[command[2]-1]
}

solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])
