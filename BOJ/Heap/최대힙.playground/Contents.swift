import Foundation

func shiftUp(_ array: [Int]) -> [Int] {
    var arr = array
    var idx = arr.count-1
    
    while idx > 1 {
        print(idx, arr[idx])
        if arr[idx/2] < arr[idx] {
            arr.swapAt(idx/2, idx)
            idx = idx/2
        } else {
            idx = idx/2
        }
    }
    
    return arr
}


func solution(_ array: [Int]) {
    var heap: [Int] = [-1]
    /*
     * heap: heap[0] = -1, heap[1 ~ n]
     * parent: i/2
     * left: i*2
     * right: i*2 + 1
     */
    
    array.map {
        heap.append($0)
        
        heap = shiftUp(heap)
        print(heap)
    }
}

solution([1, 10, 5, 8, 7])
