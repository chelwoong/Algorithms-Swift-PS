import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var arr = [Dictionary<Int, Int>]()
    var newArr: [Dictionary<Int, Int>] = []
    
    // 인덱스 추가
    for (i, v) in priorities.enumerated() {
        arr.append([i:v])
    }
 
    while arr.count > 0 {
        let curr = arr.removeFirst()
        var flag = true
        
        for v in arr {
            // 중요도가 더 높은게 있으면 맨 뒤로
            if curr.first!.value < v.first!.value {
                arr.append(curr)
                flag = false
                break
            }
        }
        
        // 중요도가 제일 높으면 새로운 배열에 추가
        if flag {
            newArr.append(curr)
        }
    }
    
    for (i, v) in newArr.enumerated() {
        if v.first!.key == location {
            return i+1
        }
    }
    
    return -1
}

solution([1, 1, 9, 1, 1, 1], 0)

// 공부할 풀이

//import Foundation
//
//public struct Queue<T> {
//    fileprivate var array = [T]()
//    private var printCount: Int = 0
//
//    public var count: Int {
//        return array.count
//    }
//
//    public var isEmpty: Bool {
//        return array.isEmpty
//    }
//
//    public mutating func enqueue(_ element: T) {
//        array.append(element)
//    }
//
//    public mutating func dequeue() -> T? {
//        if isEmpty {
//            return nil
//        } else {
//            return array.removeFirst()
//        }
//    }
//
//    public var front: T? {
//        return array.first
//    }
//
//    public mutating func print() {
//        printCount += 1
//    }
//
//    public func printCnt() -> Int {
//        return printCount;
//    }
//}
//
//extension Queue where T: PrintModel {
//    func topPriority() -> T? {
//        return array.max {
//            return $0.priority < $1.priority
//        }
//    }
//}
//
//class PrintModel: Equatable {
//    let originalIdx: Int
//    let priority: Int
//    var target: Bool = false
//
//    init(_ priority: Int, index: Int) {
//        self.priority = priority
//        self.originalIdx = index
//    }
//
//    var description: String {
//        return "===== \noriginalIdx : \(self.originalIdx) \npriority : \(self.priority) \ntarget : \(target) \n====="
//    }
//
//    static func ==(lhs: PrintModel, rhs: PrintModel) -> Bool {
//        return lhs.originalIdx == rhs.originalIdx
//    }
//}
//
//func solution(_ priorities:[Int], _ location:Int) -> Int {
//
//    var queue = Queue<PrintModel>()
//
//    for idx in 0 ..< priorities.count {
//        let pModel = PrintModel(priorities[idx], index: idx)
//        pModel.target = (location == idx)
//
//        queue.enqueue(pModel)
//    }
//    
//    var topPriority = queue.topPriority()
//    while true {
//        guard let top = topPriority else { break }
//        guard let item = queue.dequeue() else { break }
//
//        if top != item {
//            queue.enqueue(item)
//        } else {
//            queue.print()
//            if item.target {
//                break
//            } else {
//                topPriority = queue.topPriority()
//            }
//        }
//    }
//
//    return queue.printCnt()
//}

