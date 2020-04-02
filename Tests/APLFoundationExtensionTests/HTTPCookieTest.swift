//
// Created by apploft on 04.01.19.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/ 

import XCTest
import APLFoundationExtension

class HTTPCookieTest: XCTestCase {

    // create an HTTP cookie and call javaScriptString on it, then assert equal
    // result to expected hardcoded key-value pair string

    func testJavaScriptString() {
        let httpCookie: HTTPCookie! = HTTPCookie(properties: [
            .domain: "someDomain",
            .path: "somePath",
            .name: "someName",
            .secure: "TRUE",
            .value: "someValue",
            .originURL: "someOriginURL"
            ])
        XCTAssertEqual(httpCookie.javaScriptString, "someName=someValue; domain=somedomain; path=somePath; secure=true")
    }

}
