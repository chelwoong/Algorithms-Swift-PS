import Foundation

func solution(_ arrangement:String) -> Int {
    
    var unit = 0
    var result = 0
    var before = ""
    
    for s in arrangement {
        if s == ")" {
            unit -= 1
            // 레이저
            if before == "(" {
                result += unit
            } else if before == ")" {
                result += 1
            }
            before = ")"
        } else {
            unit += 1
            before = "("
        }
    }
    
    return result
}

solution("()(((()())(())()))(())")
//solution("(((())))")
//solution("((((()())))())")
