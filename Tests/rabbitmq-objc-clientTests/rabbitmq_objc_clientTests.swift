import XCTest
@testable import rabbitmq_objc_client

final class rabbitmq_objc_clientTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(rabbitmq_objc_client().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
