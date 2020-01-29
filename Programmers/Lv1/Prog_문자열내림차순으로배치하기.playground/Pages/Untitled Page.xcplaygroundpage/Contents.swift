func solution(_ s:String) -> String {
    
    let newS = s.sorted(by: >)
    
    return String(newS)
}

solution("Zbcdefg")
