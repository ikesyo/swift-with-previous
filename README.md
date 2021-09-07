# swift-with-previous
A Swift property wrapper which stores the previous value. The previous value can be get by the projected value `$propertyName`.

```swift
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
```

## License
MIT license. See [LICENSE](LICENSE) for details.
