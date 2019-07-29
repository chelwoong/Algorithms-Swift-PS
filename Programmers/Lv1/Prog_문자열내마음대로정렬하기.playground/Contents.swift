func solution(_ strings:[String], _ n:Int) -> [String] {
    
    var strDic = Dictionary<Character, String>()
    
    for c in strings {
        print(c)
        let idx = c.index(c.startIndex, offsetBy: n)
        strDic[c[idx]] = c
    }
    print(strDic)
    let newDic = strDic.keys.sorted(by: <)
    print(newDic)
    var result: [String] = [String]()
    
    for n in newDic {
        result.append(strDic[n]!)
    }
    
    return result
}

//solution(["sun", "bed", "car"], 1)
solution(["abce", "abcd", "cdx"], 2)
