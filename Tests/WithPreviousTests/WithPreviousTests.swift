import XCTest
import WithPrevious

final class WithPreviousTests: XCTestCase {
    @WithPrevious var value = 0

    func testWithPreviousWrapper() {
        XCTAssertEqual(value, 0)
        XCTAssertNil($value)

        value = 10

        XCTAssertEqual(value, 10)
        XCTAssertEqual($value, 0)
    }
}
