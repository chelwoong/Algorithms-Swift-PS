import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    
    var flag = 0
    s.lowercased()
    let lower = s.lowercased()
    
    for c in lower {
        if c == "p" {
            flag += 1
        } else if c == "y" {
            flag -= 1
        }
    }
    
    return flag == 0
}

solution("ooo")
solution("Pyy")
