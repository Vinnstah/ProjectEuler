import Foundation
import XCTest
import Problem1

final class Problem1Test: XCTestCase {
    func testExample() {
        XCTAssertEqual(
            Problem1.multiples(
                of: 3,
                or: 5,
                below: 10
            ),
            23
        )
    }
    
    func testPerformance() {
        measure {
            XCTAssertEqual(
                Problem1.multiples(
                    of: 3,
                    or: 5,
                    below: 1_000_000
                ),
                233_333_166_668
            )
        }
        
        
    }
}
