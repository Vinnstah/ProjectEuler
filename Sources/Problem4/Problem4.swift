@main
public struct Problem4 {
    public static func main() {
        print("\(largetsPalindrome(from: 999, and: 999))")
        
    }
    
    //    A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
    //
    //    Find the largest palindrome made from the product of two 3-digit numbers.
    public static func largetsPalindrome<I: FixedWidthInteger>(from a: I, and b: I) -> some FixedWidthInteger {
        
        var sum: I = 0
        var output: I = 0
        var input: I = 0
        
        for x in stride(from: a, to: a - a / 10, by: -1) {
            for y in stride(from: b, to: b - b / 10, by: -1) {
                
                sum = x * y
                input = sum
                while input > 0 {
                    let lastDigit = input % 10
                    input = input / 10
                    output = (output * 10) + lastDigit
                }
                if sum == output {
                    return output
                }
                output = 0
            }
        }
        return sum
    }
}
