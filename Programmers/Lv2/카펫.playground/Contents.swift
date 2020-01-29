import Foundation

func solution(_ brown:Int, _ red:Int) -> [Int] {
    /**
     * brown = 2w + 2h - 4
     * red = (w-2) * (h-2
     * red + brown = w*h
     */
    var width = 3
    var height = 3
    
    while true {

        /**
         * width >= height 이기 때문에
         * 현재 높이에서 구할 수 있는 width를 다 해본다.
         */
        if width*height > brown+red {
            height += 1
            width = height
        }
        if (brown+red) % height != 0 {
            width += 1
            continue
        }
        
        if brown != (2*width + 2*height - 4) {
            width += 1
            continue
        } else if red != (width-2) * (height-2) {
            width += 1
            continue
        }
        
        break
    }

    let result = [width, height]
    return result
}

//10    2    [4, 3]
solution(24, 24)
