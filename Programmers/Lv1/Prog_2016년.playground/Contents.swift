
func solution(_ a:Int, _ b:Int) -> String {
    
    let months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let dayOfTheWeek = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    var days = 5 // 1월 1일이 기준
    
    if a != 1 {
        for m in months[0..<a-1] {
            days += m
        }
    }
    
    days += b - 1
    
    return dayOfTheWeek[days % 7]
}

solution(5, 24)
//solution(1, 7)
solution(2, 1)
