//
// Created by apploft on 04.01.19.
// Copyright © 2019 apploft GmbH.
// MIT License · http://choosealicense.com/licenses/mit/ 

import XCTest
import APLFoundationExtension

class DispatchQueueTest: XCTestCase {

    func testDispatchQueueExecutesBlockOnce() {
        var number = 0
        for _ in 0...3 {
            DispatchQueue.once(token: "com.apploft.token") {
                number += 5
            }
        }
        XCTAssertEqual(number, 5)
    }

    func testDispatchQueueExecutesOnceWithUniqueToken() {
        var number = 0
        let blockOne: () -> Void = {
            number += 5
        }
        let blockTwo: () -> Void = {
            number += 100
        }
        DispatchQueue.once(token: "com.apploft.token2", block: blockOne)
        DispatchQueue.once(token: "com.apploft.token2", block: blockTwo)
        XCTAssertEqual(number, 5)
    }
}
