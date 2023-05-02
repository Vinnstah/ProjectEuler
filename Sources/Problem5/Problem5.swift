@main
public struct Problem5 {
    public static func main() {
        
        print(smallestNumberEvenlyDivisibleByAll(numbersUpTo: 20))
        
    }
    
//    2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//
//    What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
    public static func smallestNumberEvenlyDivisibleByAll<I: FixedWidthInteger>(
        numbersUpTo numbers: I
    ) -> some FixedWidthInteger {
        let range = 1...numbers
        let productOfTheLast2Elements = numbers * (numbers-1)
        for int in stride(from: 0, to: 100_000_000_000, by: Int.Stride(numbers-1)) {
            guard int != 0 else {
                continue
            }
            if !int.isMultiple(of: Int(productOfTheLast2Elements)) {
                    continue
                }
            if range.allSatisfy( { int.isMultiple(of: Int($0))}) {
                    return I(int)
                }
        }
        return numbers
    }
}
