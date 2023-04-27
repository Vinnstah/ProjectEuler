@main
public struct Problem3 {
    public static func main() {
        assert(largestPrime(of: 13195) == 29, "\(String(describing: largestPrime(of: 13195)))")
    }
    
    ///The prime factors of 13195 are 5, 7, 13 and 29.
    ///What is the largest prime factor of the number 600851475143 ?
    public static func largestPrime<I: FixedWidthInteger>(
        of number: I
    ) -> (some FixedWidthInteger)? {
        
        let primes: [I] = [2, 3, 5, 7, 11, 13, 17, 23, 31, 37, 41, 51, 53, 57, 61]
        
        guard number > 3 else {
            return number
        }
        var number = number
        var primeFactorsOfNumber: Set<I> = []
        
        for prime in primes {
            let (q,r) = number.quotientAndRemainder(dividingBy: prime)
            //while r == 0
            if r == 0 {
                number = q
                primeFactorsOfNumber.insert(prime)
                
            }
        }
        
        number
        
        }
}


