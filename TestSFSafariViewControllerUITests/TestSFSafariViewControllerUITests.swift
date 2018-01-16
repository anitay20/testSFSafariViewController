//
//  TestSFSafariViewControllerUITests.swift
//  TestSFSafariViewControllerUITests
//

import XCTest

class TestSFSafariViewControllerUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        
    }
    
    func testTapTextField() {
        app.buttons["Go to Yahoo"].tap()
        sleep(5)        // Make sure the page loads
        let textField = app.webViews.textFields.firstMatch
        print("app.debugDescription: \n\(app.debugDescription)")
        textField.tap()
    }
}
