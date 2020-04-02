//
// Created by apploft on 14.01.19.
// Copyright © 2019 apploft GmbH￼￼// MIT License · http://choosealicense.com/licenses/mit/
//
// API: https://baconipsum.com/json-api/

import XCTest
import APLFoundationExtension

class StringLoadingTest: XCTestCase {

    var baconIpsumURL = URL(string: "https://baconipsum.com/api/?callback=?")

    func testStringInitFromURLContentsWithAllParameters() {

        if let baconIpsumURL = baconIpsumURL {
            let loremIpsum = String(contentsOf: baconIpsumURL, headerFields: ["type": "all-meat"], maxLength: 100)
            XCTAssertNotNil(loremIpsum)
        } else {
            XCTAssertNotNil(false)
        }
    }

    func testStringInitFromURLContentsWithNoHttpHeaderFieldsParameter() {
        if let baconIpsumURL = baconIpsumURL {
            let loremIpsum = String(contentsOf: baconIpsumURL, maxLength: 100)
            XCTAssertNotNil(loremIpsum)
        } else {
            XCTAssertNotNil(false)
        }
    }

    func testStringInitFromURLContentsWithNoMaxLengthParameter() {
        if let apploftURL = URL(string: "www.apploft.de") {
            let loremIpsum = String(contentsOf: apploftURL, headerFields: ["type": "all-meat"])
            XCTAssertNil(loremIpsum)
        } else {
            XCTAssertNil(false)
        }
    }

    func testStringInitFromUrlContentsShouldFail() {
        if let baconIpsumURL = baconIpsumURL {
            let loremIpsum = String(contentsOf: baconIpsumURL, headerFields: [:]) // url string is incorrect
            XCTAssertNotNil(loremIpsum)
        }
        XCTAssertNotNil(false)
    }
}
