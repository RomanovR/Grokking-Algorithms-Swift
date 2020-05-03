
func factorial(x: Double) -> Double {
    if x == 1 || x == -1 {
        return x
    }
    else{
        return x * factorial(x: x - 1)
    }
}

factorial(x: -3)
