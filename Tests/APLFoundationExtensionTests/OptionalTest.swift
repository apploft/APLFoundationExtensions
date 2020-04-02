//
// Created by apploft on 11.01.19.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/ 

import XCTest
import APLFoundationExtension

class OptionalTest: XCTestCase {
    
    // MARK: test 'isNilOrEmpty'

    func testIsNilOrEmptyWhenStringIsEmpty() {
        let emptyString: String? = ""
        XCTAssertTrue(emptyString.isNilOrEmpty)
    }
    
    func testIsNilOrEmptyWhenStringIsNil() {
        let nilString: String? = nil
        XCTAssertTrue(nilString.isNilOrEmpty)
    }
    
    func testIsNilOrEmptyWhenArrayIsEmpty() {
        let emptyArray: [Int]? = []
        XCTAssertTrue(emptyArray.isNilOrEmpty)
    }

    func testIsNilOrEmptyWhenArrayIsNil() {
        let nilArray: [Int]? = nil
        XCTAssertTrue(nilArray.isNilOrEmpty)
    }
    
    func testIsNilOrEmptyWhenDictionaryIsEmpty() {
        let emptyDictionaray: [Int: Int]? = [:]
        XCTAssertTrue(emptyDictionaray.isNilOrEmpty)
    }
    
    func testIsNilOrEmptyWhenDictionaryIsNil() {
        let nilDictionary: [Int: Int]? = nil
        XCTAssertTrue(nilDictionary.isNilOrEmpty)
    }
    
    func testIsNilOrEmptyWhenSetIsEmpty() {
        let emptySet: Set<Int>? = []
        XCTAssertTrue(emptySet.isNilOrEmpty)
    }
    
    func testIsNilOrEmptyWhenSetIsNil() {
        let nilSet: Set<Int>? = nil
        XCTAssertTrue(nilSet.isNilOrEmpty)
    }
    
    //: MARK: test 'valueOrNil'
    func testValueOrNilWhenVariableIsNil() {
        let someInt: Int? = 3
        XCTAssertEqual(someInt.value(or: 5), 3)
    }
    
    func testValueOrNilWhenVariableHasValue() {
        let someInt: Int? = nil
        XCTAssertEqual(someInt.value(or: 5), 5)
    }
    
    //: MARK: test 'nilIfEmpty'
    func testNilIfEmptyWhenStringHasValue() {
        let someString = "Hello"
        XCTAssertNotNil(someString.nilIfEmpty())
    }
    
    func testNilIfEmptyWhenStringIsEmpty() {
        let emptyString = ""
        XCTAssertNil(emptyString.nilIfEmpty())
    }
    
    func testNilIfEmptyWhenArrayHasValue() {
        let someArray = [1, 2, 3]
        XCTAssertNotNil(someArray.nilIfEmpty())
    }
    
    func testNilIfEmptyWhenArrayIsEmpty() {
        let emptyArray: [Int] = []
        XCTAssertNil(emptyArray.nilIfEmpty())
    }
    
    func testNilIfEmptyWhenDictionaryHasValue() {
        let someDictionary = [1: "1", 2: "2"]
        XCTAssertNotNil(someDictionary.nilIfEmpty())
    }
    
    func testNilIfEmptyWhenDictionaryIsEmpty() {
        let emptyDictionary: [Int: String] = [:]
        XCTAssertNil(emptyDictionary.nilIfEmpty())
    }
    
    func testNilIfEmptyWhenSetHasValue() {
        let someSet: Set = [1, 2, 3, 4]
        XCTAssertNotNil(someSet.nilIfEmpty())
    }
    
    func testNilIfEmptyWhenSetIsEmpty() {
        let emptySet: Set<Int> = []
        XCTAssertNil(emptySet.nilIfEmpty())
    }

    //: MARK: test 'valueOrEmpty'
    func testValueOrEmptyWhenStringHasValue() {
        let someString: String? = "Hello"
        XCTAssertNotNil(someString.valueOrEmpty())
    }
    
    func testValueOrEmptyWhenStringIsNil() {
        let nilString: String? = nil
        XCTAssertEqual(nilString.valueOrEmpty(), "")
    }
    
    func testValueOrEmptyWhenArrayHasValue() {
        let someArray: [Int]? = [1, 2, 3]
        XCTAssertNotNil(someArray.valueOrEmpty())
    }
    
    func testValueOrEmptyWhenArrayIsNil() {
        let nilArray: [Int]? = nil
        XCTAssertEqual(nilArray.valueOrEmpty(), [])
    }
    
    func testValueOrEmptyWhenDictionaryHasValue() {
        let someDictionary: [Int: String]? = [1: "1", 2: "2", 3: "3"]
        XCTAssertNotNil(someDictionary.valueOrEmpty())
    }
    
    func testValueOrEmptyWhenDictionaryIsNil() {
        let nilDictionary: [Int: String]? = nil
        XCTAssertEqual(nilDictionary.valueOrEmpty(), [:])
    }
    
    func testValueOrEmptyWhenSetHasValue() {
        let someSet: Set<Int>? = [1, 2, 3]
        XCTAssertNotNil(someSet.valueOrEmpty())
    }
    
    func testValueOrEmptyWhenSetIsNil() {
        let nilSet: Set<Int>? = nil
        XCTAssertNotNil(nilSet.valueOrEmpty())
    }
    
}
