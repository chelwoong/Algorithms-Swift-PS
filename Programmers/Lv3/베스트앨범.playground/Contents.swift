import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    
    var result: [Int] = []

    // 장르: 인덱스
    var genreCodes: [String: Int] = [:]
    // 인덱스: [인덱스: 총 회수]
    var totalPlays: [Int: Int] = [:]
    // 인덱스: [고유번호: 횟수]
    var album: [[Int: Int]] = []
    
    for (i, genre) in genres.enumerated() {
        
        if let index = genreCodes[genre] {
            
            totalPlays[index]! += plays[i]
            album[index][i] = plays[i]
                        
        } else {
            let index = totalPlays.count
            genreCodes[genre] = index
            totalPlays[index] = plays[i]
            album.append([i: plays[i]])
        }
    }
    
    totalPlays.sorted(by: {$0.1 > $1.1}).map {
        let index = $0.key
        
        var temp = 0
        album[index].sorted { (a1, a2) -> Bool in
            
            if a1.value > a2.value {
                
                return true
            } else if a1.value == a2.value {
                if a1.key < a2.key {
                    return true
                }
                return false
            } else {
                return false
            }
        }.map {
            if temp < 2 {
                print(temp, $0)
                result.append($0.key)
            }
            temp += 1
        }
        
    }
//    print(totalPlays)
    

    return result
}

//solution(["classic", "pop", "classic", "classic", "pop", "classic"], [500, 600, 150, 800, 2500, 800])
solution(["classic", "pop", "classic", "pop", "classic", "classic"], [400, 600, 150, 2500, 500, 500])

//genres [classic, pop, classic, pop, classic, classic]
//plays [400, 600, 150, 2500, 500, 500]
//Return [3, 1, 4, 5]

var a = [1: 200, 2: 300, 3: 400, 4: 300]

print(a.sorted(by: {$0.value < $1.value}))
