//
// Created by apploft on 11.01.19.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/ 

import XCTest
import APLFoundationExtension

class StringTest: XCTestCase {

    //: MARK: test 'stringByRemovingRegexMatches(pattern:replaceWith:)'
    func testStringRemoveRegexMatches() {
        let alphabetString = "abcdefghijk"
        XCTAssertEqual(alphabetString.removeRegexMatches(pattern: "d.*"), "abc")
    }

    func testStringRemoveRegexMatchesWithEmptyPattern() {
        let alphabetString = "abcdefghijk"
        XCTAssertEqual(alphabetString.removeRegexMatches(pattern: ".*"), "")
    }

    //: MARK: test 'capturedGroups(for:)'
    func testCapturedGroupsForMultipleCaptureGroups() {
        let alphabetString = "abcdefghijk"
        XCTAssertEqual(alphabetString.capturedGroups(for: "a(.*)d(.*)g(.*)k"), ["bc", "ef", "hij"])
    }

    func testCapturedGroupsForOneGroup() {
        let alphabetString = "abcdefghijk"
        XCTAssertEqual(alphabetString.capturedGroups(for: "e(.*)"), ["fghijk"])
    }

    func testCapturedGroupsForNoGrouop() {
        let alphabetString = "abcdefghijk"
        XCTAssertEqual(alphabetString.capturedGroups(for: "d(c.*)"), [])
    }

}
