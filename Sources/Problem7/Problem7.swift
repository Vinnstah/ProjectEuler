import Darwin

@main
public struct Problem7 {
    public static func main() {
        assert(findPrime(number: 6) == 13, "\(findPrime(number: 6))")
        print(findPrime(number: 10_001))
    }
    
    //    By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
    //
    //    What is the 10 001st prime number?
    
    public static func findPrime<I: FixedWidthInteger>(
        number prime: I
    ) -> some FixedWidthInteger {
        
        var listOfPrimes: [I?] = []
        
        listOfPrimes = (1...prime*11)
                .compactMap { element in
                    isPrime(number: element) ? element : nil
                }
        print(listOfPrimes.count)
        return listOfPrimes[Int(prime)]!
    }
    
    public static func isPrime<I: FixedWidthInteger>(number: I) -> Bool {
        guard number > 3 else {
            return true
        }
        guard number % 2 != 0 else {
            return false
        }
        for i in 3...Int(sqrt(Double(number))) + 1 {
            if number % I(i) == 0 {
                return false
            }
        }
        return true
    }
}
