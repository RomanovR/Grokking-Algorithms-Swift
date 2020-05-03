let exampleArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 20]

// Ex 4.1
func recSum(source: [Int], _ total: Int = 0) -> Int {
    if let head = source.first {
        let tail = Array(source.dropFirst())
        return recSum(source: tail, head + total)
    }
    else{
        return total
    }
}

recSum(source: exampleArray)

// Ex 4.2
func recCount(source: [Int], _ count: Int = 0) -> Int {
    if let _ = source.first {
        let tail = Array(source.dropFirst())
        return recCount(source: tail, count + 1)
    }
    else{
        return count
    }
}

recCount(source: exampleArray)

// Ex 4.3
func recMax(source: [Int], _ max: Int = 0) -> Int {
    if let head = source.first {
        let tail = Array(source.dropFirst())
        if head > max {
            return recMax(source: tail, head)
        } else {
            return recMax(source: tail, max)
        }
    }
    else{
        return max
    }
}

recMax(source: exampleArray)

// Ex 4.4
//func recBinarySearch(source: [Int], goal: Int) -> Int{
//    return recBinSearch(source: source, goal, source)
//}
//
//func recBinSearch(source: [Int], _ goal: Int, _ interval: [Int]) -> Int {
//    let midpoint: Int = interval.count / 2
//    // Если середина больше искомого
//    if interval[midpoint] > goal {
//        let firstHalf = Array(interval[..<midpoint])
//        print(firstHalf)
//        return recBinSearch(source: source, goal, firstHalf)
//    }
//    // Если середина меньше искомого
//    else if interval[midpoint] < goal {
//        let secondHalf = Array(interval[midpoint...])
//        print(secondHalf)
//        return recBinSearch(source: source, goal, secondHalf)
//    }
//    else {
//        return midpoint
//    }
//}
//
//recBinarySearch(source: exampleArray, goal: 20)
