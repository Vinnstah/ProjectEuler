import Foundation
import XCTest
import Problem6

final class Problem6Test: XCTestCase {
    func testExample() {
        XCTAssertEqual(Problem6.differenceBetweenSumOfSquaresForAllNumbers(upTo: 10), 2640)
    }
    
    func testPerformance() {
        measure {
            XCTAssertEqual(Problem6.differenceBetweenSumOfSquaresForAllNumbers(upTo: 100), 25_164_150)
        }
    }
}
