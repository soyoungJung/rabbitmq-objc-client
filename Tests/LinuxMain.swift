import XCTest

import rabbitmq_objc_clientTests

var tests = [XCTestCaseEntry]()
tests += rabbitmq_objc_clientTests.allTests()
XCTMain(tests)
