import XCTest

import A
import C
import B


final class D: XCTestCase {
    func testD() {
      XCTAssertFalse(
        B.uniqueXs.containsDuplicates(), "B thinks its Xs are unique")
      B.uniqueXs.doSomething()
    }

    static var allTests = [
        ("testD", testD),
    ]
}
