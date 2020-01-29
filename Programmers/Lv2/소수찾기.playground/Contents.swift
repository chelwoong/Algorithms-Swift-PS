import Foundation

extension Int {
    func isPrime() -> Bool {
        
        if self < 2 {
            return false
        }
        
        guard self != 2, self != 3 else { return true }

        for i in 2...Int(sqrt(Double(self))) {
            if self%i == 0 {
                return false
            }
        }
        
        return true
    }
}

var primes = Set<Int>()

func searchPrime(array arr: [Int], prime: Int) {
    if arr.isEmpty {
        return
    }
    
    for (i, n) in arr.enumerated() {
                
        var newArr = arr
        newArr.remove(at: i)
                
        let p = prime * 10 + n
        if p.isPrime() {
            primes.insert(p)
        }
        
        searchPrime(array: newArr, prime: p)
    }
}

func solution(_ numbers:String) -> Int {
    
    let intArr = numbers.compactMap {
        return Int(String($0))
    }
    
    searchPrime(array: intArr, prime: 0)
    
    let result = primes.compactMap {
        return $0
    }
    
    return result.count
}

solution("011")



