//
//  PaxfulWebUITests.swift
//  PaxfulWebUITests
//
//  Created by ramil on 10.06.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import XCTest

class PaxfulWebUITests: XCTestCase {

    let safari = XCUIApplication(bundleIdentifier: "com.apple.mobilesafari")
    
    override func setUp() {
        safari.launch()
    }
    
    override func tearDown() {
        safari.terminate()
    }
    
    func testPaxfulWeb() throws {
        
        let app = XCUIApplication()
        
        _ = safari.wait(for: .runningForeground, timeout: 30)
        
        safari.buttons["URL"].tap()
        
        safari.typeText("https://paxful.com/")
        safari.keyboards.buttons["Go"].tap()
        
        _ = app.wait(for: .runningForeground, timeout: 5)
        //print(safari.debugDescription)
        
        safari.webViews["WebView"].buttons["menu"].tap()
        _ = app.wait(for: .runningForeground, timeout: 5)
        
        safari.webViews["WebView"].buttons["menu"].tap()
        _ = app.wait(for: .runningForeground, timeout: 5)
        
        
        safari.webViews["WebView"].buttons["Get started"].tap()
        _ = app.wait(for: .runningForeground, timeout: 5)
        
        safari.webViews["WebView"].buttons["Get started"].tap()
        _ = app.wait(for: .runningForeground, timeout: 5)
    }
}
