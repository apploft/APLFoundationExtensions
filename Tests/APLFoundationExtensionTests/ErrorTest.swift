//
// Created by apploft on 14.01.19.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/  

import XCTest
import APLFoundationExtension

class ErrorTest: XCTestCase {

    func testErrorDomain() {
        XCTAssertEqual(APLError.errorDomain, "de.apploft")
    }

    func testAPLFileNotFoundRawValue() {
        XCTAssertEqual(APLError.fileNotFound.rawValue, 1000)
    }

    func testFileNotFoundNSErrorCode() {
        XCTAssertEqual(NSError.fileNotFound.code, APLError.fileNotFound.rawValue)
    }

    func testFileNotFoundNSErrorDomain() {
        XCTAssertEqual(NSError.fileNotFound.domain, APLError.errorDomain)
    }

    func testErrorCodeFromNSError() {
        let error = NSError(domain: "de.apploft", code: 1000, userInfo: nil) as Error
        XCTAssertEqual(error.domain, APLError.errorDomain)
    }

    func testErrorDomainFromNSError() {
        let error = NSError(domain: "de.apploft", code: 1000, userInfo: nil) as Error
        XCTAssertEqual(error.domain, APLError.errorDomain)
    }
}
