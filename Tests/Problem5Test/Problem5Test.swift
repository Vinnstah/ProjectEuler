import Foundation
import XCTest
import Problem5

final class Problem5Test: XCTestCase {
    func testExample() {
        XCTAssertEqual(Problem5.smallestNumberEvenlyDivisibleByAll(numbersUpTo: 10), 2520)
    }
    
    func testPerformance() {
        measure {
            XCTAssertEqual(Problem5.smallestNumberEvenlyDivisibleByAll(numbersUpTo: 20), 232_792_560)
        }
    }
}
