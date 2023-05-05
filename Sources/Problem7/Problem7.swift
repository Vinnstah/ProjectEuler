import Darwin

@main
public struct Problem7 {
    public static func main() {
//        assert(findPrime(number: 6) == 13, "\(findPrime(number: 6))")
        print(findPrime(number: 10_0))
        print(recursivePrimes(n: 104743, i: 2))
//        print(isPrime(number: 104743))
    }
    
    //    By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
    //
    //    What is the 10 001st prime number?
    
    public static func findPrime<I: FixedWidthInteger>(number prime: I) -> some FixedWidthInteger {
        let array: [I?] = (1...prime*100)
            .map { element in
//                isPrime(number: $0) ? $0 : nil
                return recursivePrimes(n: element, i: 2) ? element : nil
            }
            .compactMap {  $0  }
//            .map { element in
//                guard element > 3 else {
//                    return element
//                }
//
//                guard element != 5 || element != 7 else {
//                    return element
//                }
//                if element % 2 == 0 || element % 3 == 0 || element % 5 == 0 || element % 7 == 0 {
//                    return nil
//                }
//                return element
//            }
//            .compactMap { $0 }
        print(array)
//        print(array.first(where: { $0 == 104743}))
        let number: I = array[Int(prime)]!
        return number
    }
    
    public static func isPrime<I: FixedWidthInteger>(number: I) -> Bool {
        guard number > 3 else {
            return true
        }
        guard number % 2 != 0 else {
            return false
        }
        for i in stride(from: 3, to: sqrt(Double(number)) + 1, by: 1) {
            if number % I(i) == 0 {
                return false
            }
            return true
        }
        return false
    }
    
    public static func recursivePrimes<I: FixedWidthInteger>(n: I, i: I) -> Bool {
        var i = i
        guard n > 2 else {
            return false
        }
        guard n != i else {
            return true
        }
//        if (n == i) {
////            i += 1
//            return true
//        }
        
        if (n % i == 0) {
            return false
        }
        
        i += 1
        
//        print("n: \(n) and i: \(i)")
        return recursivePrimes(n: n, i: i)
    }
}
