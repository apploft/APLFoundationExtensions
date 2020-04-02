//
// Created by apploft on 04.01.19.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/ 

import XCTest
import APLFoundationExtension

class DateTest: XCTestCase {

    func testCreateDateAtReferenceDate() {
        let date = Date(year: 1970, month: .january, day: 1, hour: 1, minute: 0, second: 0)
        let originalDate = Date(timeIntervalSince1970: 0.0)
        
        XCTAssertEqual(date, originalDate)        
    }
    
    func testCreateDateJanuary1st() {
        let date = Date(year: 1970, month: .january, day: 1, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-01-01T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateJanuaryLast() {
        let date = Date(year: 1970, month: .january, day: 31, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-01-31T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateFebruary1st() {
        let date = Date(year: 1970, month: .february, day: 1, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-02-01T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateFebruaryLast() {
        let date = Date(year: 1970, month: .february, day: 28, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-02-28T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    // Tino: Was passiert am 30. Febr?
    
    func testCreateDateMarch1st() {
        let date = Date(year: 1970, month: .march, day: 1, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-03-01T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateMarchLast() {
        let date = Date(year: 1970, month: .march, day: 31, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-03-31T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateApril1st() {
        let date = Date(year: 1970, month: .april, day: 1, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-04-01T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateAprilLast() {
        let date = Date(year: 1970, month: .april, day: 30, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-04-30T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateMay1st() {
        let date = Date(year: 1970, month: .may, day: 01, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-05-01T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateMayLast() {
        let date = Date(year: 1970, month: .may, day: 31, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-05-31T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateJune1st() {
        let date = Date(year: 1970, month: .june, day: 01, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-06-01T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateJuneLast() {
        let date = Date(year: 1970, month: .june, day: 30, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-06-30T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateJuly1st() {
        let date = Date(year: 1970, month: .july, day: 01, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-07-01T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateJulyLast() {
        let date = Date(year: 1970, month: .july, day: 31, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-07-31T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateAugust1st() {
        let date = Date(year: 1970, month: .august, day: 1, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-08-01T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateAugustLast() {
        let date = Date(year: 1970, month: .august, day: 31, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-08-31T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateSeptember1st() {
        let date = Date(year: 1970, month: .september, day: 1, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-09-01T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateSeptemberLast() {
        let date = Date(year: 1970, month: .september, day: 30, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-09-30T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateOctober1st() {
        let date = Date(year: 1970, month: .october, day: 1, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-10-01T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateOctoberLast() {
        let date = Date(year: 1970, month: .october, day: 31, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-10-31T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateNovember1st() {
        let date = Date(year: 1970, month: .november, day: 1, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-11-01T00:00:00")
        
        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateNovemberLast() {
        let date = Date(year: 1970, month: .november, day: 30, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-11-30T00:00:00")

        XCTAssertEqual(date, referenceDate)
    }
    
    func testCreateDateDecember1st() {
        let date = Date(year: 1970, month: .december, day: 01, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-12-01T00:00:00")

        XCTAssertEqual(date, referenceDate)
    }

    func testCreateDateDecemberLast() {
        let date = Date(year: 1970, month: .december, day: 31, hour: 0, minute: 0, second: 0)
        let referenceDate = Date.fromString("1970-12-31T00:00:00")

        XCTAssertEqual(date, referenceDate)
    }
}

extension Date {
    static func fromString(_ dateString: String) -> Date? {
        let dateFormatter = DateFormatter()

        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = .current

        return dateFormatter.date(from: dateString)
    }
}
