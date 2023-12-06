//
//  ExoTestTests.swift
//  ExoTestTests
//
//  Created by R2K7T7TTFH on 27/09/2023.
//

import XCTest
@testable import ExoTest

final class ExoTestTests: XCTestCase {
    var model: Model!
    
    override func setUpWithError() throws {
        model = Model()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testResult() {
        // GIVEN
        // WHEN
        // THEN
        XCTAssertEqual(model.result, "")
        
        // GIVEN
        // WHEN
        model.tata = "test"
        // THEN
        XCTAssertEqual(model.result, "test")
        
        // GIVEN
        // WHEN
        model.toto = "test"
        model.tata = nil
        // THEN
        XCTAssertEqual(model.result, "TEST")
        
        // GIVEN
        // WHEN
        model.toto = "test"
        model.tata = "tata"
        // THEN
        XCTAssertEqual(model.result, "TESTtata")
        
        // GIVEN
        // WHEN
        model.toto = "TEST"
        model.tata = "tata"
        model.selectedCase = .lowercased
        // THEN
        XCTAssertEqual(model.result, "testtata")
    }
}
