import Foundation

func makeList(_ n: Int) -> [Int] {
    return (0..<n).map { _ in .random(in: 1...99) }
}

func binarySearch(list: [Int], goal: Int) -> Int? {
    var leftBorder = 0
    var rightBorder = list.count - 1
    
    while leftBorder <= rightBorder {
        let middle: Int = (leftBorder + rightBorder) / 2
        let guess = list[middle]
        if guess == goal {
            return middle
        }
        if guess > goal {
            rightBorder = middle - 1
        }
        else {
            leftBorder = middle + 1
        }
    }
    return nil
}

var testList = makeList(128)
testList.sort()

binarySearch(list: testList, goal: 10)
