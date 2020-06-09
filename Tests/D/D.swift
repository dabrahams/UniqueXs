import XCTest

import A
#if FAIL_TESTS
// Currently, tests passing depends on import order
import C
import B  
#else
import B  
import C
#endif

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
