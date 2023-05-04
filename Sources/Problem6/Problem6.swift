@main
public struct Problem6 {
    public static func main() {
        print(differenceBetweenSumOfSquaresForAllNumbers(upTo: 100))
    }
    
//    The sum of the squares of the first ten natural numbers is,
//
//    The square of the sum of the first ten natural numbers is,
//
//    Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is
//    .
//
//    Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
    public static func differenceBetweenSumOfSquaresForAllNumbers<I: FixedWidthInteger>(
        upTo number: I
    ) -> some FixedWidthInteger {
        
        let sumOfSquares: I = (0...number)
            .map { $0 * $0 }
            .reduce(0, +)
        
        let theSum: I = (0...number)
            .map { $0 }
            .reduce(0, +)
        
        return (theSum * theSum) - sumOfSquares
    }
}
