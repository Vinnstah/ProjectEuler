@main
public struct Problem1 {
    ///If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
    ///Find the sum of all the multiples of 3 or 5 below 1000.
    public static func main() {
        print(multiples(of: 3, or: 5, below: 1000))
    }
    
    public static func multiples<I: FixedWidthInteger>(
        of a: I,
        or b: I,
        below upperBound: I
    ) -> some FixedWidthInteger {
        
        Set(
            stride(
                from: I.zero,
                to: upperBound,
                by: I.Stride(a))
        )
        .union(
            Swift.stride(
                from: I.zero,
                to: upperBound,
                by: I.Stride(b)
            )
        )
        .reduce(0, +)
    }
    
    
}

