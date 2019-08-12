func solution(_ strings:[String], _ n:Int) -> [String] {
    
    var strDic = Dictionary<String, Character>()
    
    for c in strings {
//        print(c)
        let idx = c.index(c.startIndex, offsetBy: n)
        strDic[c] = c[idx]
    }
//    print(strDic)
    strDic.sorted(by: >)
    let newDic = strDic.sorted { (dic1, dic2) -> Bool in
        if dic1.value == dic2.value {
            return dic1.key < dic2.key
        } else {
            return dic1.value < dic2.value
        }
    }
//    print(newDic)
    var result: [String] = [String]()
    
    for n in newDic {
        result.append(n.key)
    }
    
    return result
}

//solution(["sun", "bed", "car"], 1)
print(solution(["abce", "abcd", "cdx"], 2))
