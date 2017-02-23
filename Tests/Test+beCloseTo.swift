//
//  Test+beCloseTo.swift
//  Spry
//
//  Created by Shahpour Benkau on 22/02/2017.
//
//

import Foundation
import XCTest
import Spry

final class Test_beCloseTo: XCTestCase {
    
    func testBeCloseTo() {
        XCTAssert(expect(1.2).to(beCloseTo(1.2001)))
        XCTAssert(expect(1.2 as CDouble).to(beCloseTo(1.2001)))
        XCTAssert(expect(1.2 as Float).to(beCloseTo(1.2001)))
    }
    
    func testBeCloseToWithin() {
        XCTAssert(expect(1.2).to(beCloseTo(9.300, within: 10)))
    }
    
    func testBeCloseToWithNSNumber() {
        XCTAssert(expect(NSNumber(value:1.2)).to(beCloseTo(9.300, within: 10)))
        XCTAssert(expect(NSNumber(value:1.2)).to(beCloseTo(NSNumber(value:9.300), within: 10)))
        XCTAssert(expect(1.2).to(beCloseTo(NSNumber(value:9.300), within: 10)))
    }
    
    func testBeCloseToWithCGFloat() {
        XCTAssert(expect(CGFloat(1.2)).to(beCloseTo(1.2001)))
        XCTAssert(expect(CGFloat(1.2)).to(beCloseTo(CGFloat(1.2001))))
    }
    
    func testBeCloseToWithDate() {
        XCTAssert(expect(Date(dateTimeString: "2015-08-26 11:43:00")).to(beCloseTo(Date(dateTimeString: "2015-08-26 11:43:05"), within: 10)))
    }
    
    func testBeCloseToWithNSDate() {
        XCTAssert(expect(NSDate(dateTimeString: "2015-08-26 11:43:00")).to(beCloseTo(NSDate(dateTimeString: "2015-08-26 11:43:05"), within: 10)))
    }
    
    func testBeCloseToOperator() {
        XCTAssert(expect(1.2) ≈ 1.2001)
        XCTAssert(expect(1.2 as CDouble) ≈ 1.2001)
    }
    
    func testBeCloseToWithinOperator() {
        XCTAssert(expect(1.2) ≈ (9.300, 10))
        XCTAssert(expect(1.2) == (9.300, 10))
    }
    
    func testPlusMinusOperator() {
        XCTAssert(expect(1.2) ≈ 9.300 ± 10)
        XCTAssert(expect(1.2) == 9.300 ± 10)
    }
    
    func testBeCloseToOperatorWithDate() {
        XCTAssert(expect(Date(dateTimeString: "2015-08-26 11:43:00")) ≈ Date(dateTimeString: "2015-08-26 11:43:00"))
    }
    
    func testBeCloseToWithinOperatorWithDate() {
        XCTAssert(expect(Date(dateTimeString: "2015-08-26 11:43:00")) ≈ (Date(dateTimeString: "2015-08-26 11:43:05"), 10))
        XCTAssert(expect(Date(dateTimeString: "2015-08-26 11:43:00")) == (Date(dateTimeString: "2015-08-26 11:43:05"), 10))
    }
    
    func testPlusMinusOperatorWithDate() {
        XCTAssert(expect(Date(dateTimeString: "2015-08-26 11:43:00")) ≈ Date(dateTimeString: "2015-08-26 11:43:05") ± 10)
        XCTAssert(expect(Date(dateTimeString: "2015-08-26 11:43:00")) == Date(dateTimeString: "2015-08-26 11:43:05") ± 10)
    }
    
    func testBeCloseToArray() {
        XCTAssert(expect([0.0, 1.1, 2.2]) ≈ [0.0001, 1.1001, 2.2001])
        XCTAssert(expect([0.0, 1.1, 2.2]).to(beCloseTo([0.1, 1.2, 2.3], within: 0.1)))
    }
    
}
