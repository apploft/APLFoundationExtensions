//
// Created by apploft on 04.01.19.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/ 

import XCTest
import APLFoundationExtension

class NSAttributedStringTest: XCTestCase {

    func testSubstituteText() {
        let stringHello = NSAttributedString(string: "hello")
        let stringWorld = NSAttributedString(string: "world")
        XCTAssertEqual(stringHello.substituteText(with: "world"), stringWorld)
    }

    func testSubstituteEmptyText() {
        let stringWorld = NSAttributedString(string: "world")
        let stringEmpty = NSAttributedString(string: "")
        XCTAssertEqual(stringEmpty.substituteText(with: "world"), stringWorld)
    }

    func testSubstituteTextWithEmptyString() {
        let stringWorld = NSAttributedString(string: "world")
        let emptyString = NSAttributedString(string: "")
        XCTAssertEqual(stringWorld.substituteText(with: ""), emptyString)
    }

    func testSubstituteColor() {
        let redString = NSAttributedString(string: "string", attributes: [.foregroundColor: UIColor.red])
        let anotherString = NSAttributedString(string: "string", attributes: [.foregroundColor: UIColor.blue])

        XCTAssertEqual(redString, anotherString.substituteColor(with: .red))
    }

    func testSubstituteColorForDefaultColor() {
        let defaultColorString = NSAttributedString(string: "string")
        let redString = NSAttributedString(string: "string", attributes: [.foregroundColor: UIColor.red])

        XCTAssertEqual(redString, defaultColorString.substituteColor(with: .red))
    }
}
