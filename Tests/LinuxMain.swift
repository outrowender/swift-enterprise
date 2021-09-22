import XCTest

import enterpriseTests

var tests = [XCTestCaseEntry]()
tests += enterpriseTests.allTests()
XCTMain(tests)
