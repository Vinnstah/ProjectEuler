import Foundation
import XCTest
import Problem3

final class Problem3Test: XCTestCase {
    func testExample() {
        XCTAssertEqual(
            Problem3.largestPrime(
                of: 13_195
            ),
            [5, 7, 13, 29]
        )
    }
    
    func testPerformance() {
        measure {
            XCTAssertEqual(
                Problem3.largestPrime(of: 600_851_475_143
                ),
                [71, 839, 1471, 6857]
            )
        }
        
        
    }
}
