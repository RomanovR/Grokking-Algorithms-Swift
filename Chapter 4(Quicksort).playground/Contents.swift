// Ex 4.1
let exampleArray = [1, 2, 3, 10, 4, 5, 6]
exampleArray.count

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
