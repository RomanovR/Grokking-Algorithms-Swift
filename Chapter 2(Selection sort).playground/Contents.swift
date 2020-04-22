import Foundation

let testArray = [5, 6, 10, 7, 1, 0, 9, 4, 2, 15, -20]

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

//getIndexOfSmallest(array: testArray)

func selectionSort(inputArray: [Int]) -> [Int] {
    var unsortedArray = inputArray
    var sortedArray = [Int]()
    var indexOfSmallest: Int
    var smallestItem: Int
    for _ in inputArray {
        smallestItem = unsortedArray.min()!
        indexOfSmallest = unsortedArray.firstIndex(of: smallestItem)!
        sortedArray.append(unsortedArray.min()!)
        unsortedArray.remove(at: indexOfSmallest)
    }
    return sortedArray
}

selectionSort(inputArray: testArray)


