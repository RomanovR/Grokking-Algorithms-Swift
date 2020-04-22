import Foundation

let testArray = [5, 6, 10, 7, 1, 0, 9, 4, 2, 15]

func calculateTime(block : (() -> Void)) {
    let start = DispatchTime.now()
    block()
    let end = DispatchTime.now()
    let nanoTime = end.uptimeNanoseconds - start.uptimeNanoseconds
    let timeInterval = Double(nanoTime) / 1_000_000_000
    print("Time: \(timeInterval) seconds")
}

calculateTime {
//    exampleFunc()// function whose execution time to be calculated
}

func getIndexOfSmallest(array: [Int]) -> Int {
    var smallestItem = array[0]
    var indexOfSmallestItem = 0
    for i in array {
        print(i)
        if i < smallestItem {
            smallestItem = array[i]
            indexOfSmallestItem = i
        }
    }
    return indexOfSmallestItem + 1
}



getIndexOfSmallest(array: testArray)


func selectionSort(inputArray: [Int]) -> [Int] {
    var unsortedArray = inputArray
    var sortedArray = [Int]()
    var indexOfSmallest: Int = 0
    for _ in inputArray {
        print(unsortedArray)
        indexOfSmallest = unsortedArray.firstIndex(of: unsortedArray.min()!)!
        sortedArray.append(unsortedArray.min()!)
        unsortedArray.remove(at: indexOfSmallest)
    }
    return sortedArray
}

selectionSort(inputArray: testArray)


