import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(rabbitmq_objc_clientTests.allTests),
    ]
}
#endif
