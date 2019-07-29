//func solution(_ s:String) -> String {
//
//    var ss: [Character] = Array(s)
//    let idx = s.count / 2
//    var result = ""
//    if s.count % 2 == 0 {
//        result += String(ss[idx-1])
//        result += String(ss[idx])
//    } else {
//        result += String(ss[idx])
//    }
//
//    return result
//}

func solution(_ s:String) -> String {
    
    let arr = Array(s)
    let idx = arr.count / 2
    
    
    if arr.count % 2 == 0 {
        return String(arr[idx-1...idx])
    } else {
        return String(arr[idx])
    }
}


solution("abcde")
solution("qwer")

