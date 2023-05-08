import Foundation
import XCTest
import Problem7

final class Problem7Test: XCTestCase {
    func testExample() {
        XCTAssertEqual(Problem7.findPrime(number: 6), 13)
    }
    
    func testPerformance() {
        measure {
            XCTAssertEqual(Problem7.findPrime(number: 10_001), 104743)
        }
    }
}
