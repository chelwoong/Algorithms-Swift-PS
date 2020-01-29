import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var items: [String: Int] = [:]
    var result = 1
    
    for clothe in clothes {
        let kind = clothe[1]
        
        if items[kind] == nil {
            items[kind] = 1
        } else {
            items[kind]! += 1
        }
    }
    
    items.map {
        result *= ($1 + 1)
    }
    
    return result - 1
}

solution([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]])
