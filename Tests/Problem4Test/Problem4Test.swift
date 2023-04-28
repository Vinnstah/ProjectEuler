import Foundation
import XCTest
import Problem4

final class Problem4Test: XCTestCase {
    func testExample() {
        XCTAssertEqual(Problem4.largetsPalindrome(from: 99, and: 99), 9009)
    }
    
    func testPerformance() {
        measure {
            XCTAssertEqual(Problem4.largetsPalindrome(from: 999, and: 999), 906_609)
        }
    }
}
