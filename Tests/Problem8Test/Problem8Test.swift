import Foundation
import XCTest
import Problem8

final class Problem8Test: XCTestCase {
    func testExample() {
    }
    
    func testPerformance() {
        measure {
           XCTAssertEqual(Problem8.largestProductFrom(nAdjacentNumbers: 13), 23514624000) 
        }
    }
}
