import XCTest

class RMQUnallocatedChannelTest: XCTestCase {

    func testSendsErrorToDelegateWhenBasicConsumeAttempted() {
        let delegate = ConnectionDelegateSpy()
        let ch = RMQUnallocatedChannel()
        ch.activateWithDelegate(delegate)
        ch.basicConsume("foo", options: []) { (_) in }
        XCTAssertEqual(RMQChannelErrorUnallocated, delegate.lastChannelError!.code)
        XCTAssertEqual("Unallocated channel", delegate.lastChannelError!.localizedDescription)
    }

}