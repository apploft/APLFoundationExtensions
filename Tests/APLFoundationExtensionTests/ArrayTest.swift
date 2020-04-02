//
// Created by apploft on 03.01.19.
// Copyright © 2019 apploft GmbH￼￼ 
// MIT License · http://choosealicense.com/licenses/mit/ 

import XCTest
import APLFoundationExtension

class ArrayTest: XCTestCase {

    func testRemoveDuplicateElementsFromArrayForIntType() {
        let numbers = [1, 2, 2, 2, 3, 3, 3, 4, 4, 5, 5, 6, 6].unique.sorted()
        XCTAssertEqual(numbers, [1, 2, 3, 4, 5, 6])
    }

    func testRemoveDuplicateElementsFromArrayForStringType() {
        let numberStrings = ["1", "2", "3", "3", "4", "4"].unique.sorted()
        XCTAssertEqual(numberStrings, ["1", "2", "3", "4"])
    }

    func testRemoveDuplicateElementsFromEmptyArray() {
        let emptyNumbers: [Int] = [].unique.sorted()
        XCTAssertEqual(emptyNumbers, [])
    }

    func testRemoveFirstElementFromEmptyArray() {
        var emptyArray: [String] = []
        XCTAssertNil(emptyArray.removeFirstOrNil())
    }

    func testRemoveFirstElementFromArray() {
        var numbers = [1, 2, 3, 4, 5]
        _ = numbers.removeFirstOrNil()
        XCTAssertEqual(numbers, [2, 3, 4, 5])
    }

    // if errror is thrown: clean build folder should work
    func testSafeSubscriptingWhenElementAtIndexNil() {
        let numbers = [1, 2, 3, 4]
        XCTAssertNil(numbers[safe: 4])
    }

    func testSafeSubscriptingWhenElementAtIndexNotNil() {
        let numbers = [1, 2, 3, 4]
        XCTAssertNotNil(numbers[safe: 2])
    }

}
