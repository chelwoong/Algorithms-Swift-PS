
func solution(_ s:String) -> Bool {

    if Int(s) != nil, (s.count == 4 || s.count == 6) {
        return true
    } else {
        return false
    }
}

solution("00050")

