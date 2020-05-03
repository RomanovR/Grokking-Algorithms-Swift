let exampleArrayTwo = [1, 2, 3, 4, 5, 6]
exampleArrayTwo.count

func recursiveSum(source: [Int], _ total: Int = 0) -> Int {
    if let head = source.first {
        let tail = Array(source.dropFirst())
        return recursiveSum(source: tail, head + total)
    }
    else{
        return total
    }
}

recursiveSum(source: exampleArrayTwo)
