import XCTest

import A
// Currently, tests passing depends on import order
#if SWAP_IMPORT_ORDER
import B  
import C
#else
import C
import B  
#endif

final class D: XCTestCase {
  func testD() {
    XCTAssertFalse(
      B.uniqueXs.containsDuplicates(),
      "Whether this fails depends on import order")
    B.uniqueXs.doSomething()
  }

  static var allTests = [
    ("testD", testD),
  ]
}
